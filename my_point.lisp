;;;
;;; FILE: my_point.lisp
;;; This is the Lisp backend for the my_point class.
;;;

(in-package :maxima)

(defun $add_points (p1 p2)
  ;; Create a new my_point structure instance.
  (let (($new_point (mfuncall '$new '$my_point)))
    ;; Access the coordinates using list functions (second, third)
    ;; instead of array functions (aref).
    ;; The first element of the list is the type header.
    ;; The second element (nth 1) is the 'x' coordinate.
    ;; The third element (nth 2) is the 'y' coordinate.
    (setf (second $new_point) (+ (second p1) (second p2)))
    (setf (third $new_point) (+ (third p1) (third p2)))
    $new_point))
