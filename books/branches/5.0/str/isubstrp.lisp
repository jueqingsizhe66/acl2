; ACL2 String Library
; Copyright (C) 2009-2010 Centaur Technology
;
; Contact:
;   Centaur Technology Formal Verification Group
;   7600-C N. Capital of Texas Highway, Suite 300, Austin, TX 78731, USA.
;   http://www.centtech.com/
;
; This program is free software; you can redistribute it and/or modify it under
; the terms of the GNU General Public License as published by the Free Software
; Foundation; either version 2 of the License, or (at your option) any later
; version.  This program is distributed in the hope that it will be useful but
; WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
; more details.  You should have received a copy of the GNU General Public
; License along with this program; if not, write to the Free Software
; Foundation, Inc., 51 Franklin Street, Suite 500, Boston, MA 02110-1335, USA.
;
; Original author: Jared Davis <jared@centtech.com>

(in-package "STR")
(include-book "istrpos")
(local (include-book "arithmetic"))

(defsection isubstrp
  :parents (substrings)
  :short "Case-insensitively test for the existence of a substring."
  :long "<p>@(call isubstrp) determines if x ever occurs as a case-insensitive
substring of y.</p>

<p>See also @(see substrp) for a case-sensitive version.</p>

<p>See also @(see istrpos) for an alternative that reports the position of the
matched substring.</p>"

  (defund isubstrp (x y)
    (declare (type string x)
             (type string y))
    (if (istrpos x y)
        t
      nil))

  (local (in-theory (enable isubstrp)))

  (defthm iprefixp-when-isubstrp
    (implies (and (isubstrp x y)
                  (force (stringp x))
                  (force (stringp y)))
             (iprefixp (coerce x 'list)
                       (nthcdr (istrpos x y) (coerce y 'list)))))

  (defthm completeness-of-isubstrp
    (implies (and (iprefixp (coerce x 'list)
                            (nthcdr m (coerce y 'list)))
                  (force (natp m))
                  (force (stringp x))
                  (force (stringp y)))
             (isubstrp x y))
    :hints(("Goal"
            :in-theory (disable completeness-of-istrpos)
            :use ((:instance completeness-of-istrpos))))))



(defsection collect-strs-with-isubstr
  :parents (substrings)
  :short "Gather strings that have some (case-insensitive) substring."

  :long "<p>@(call collect-strs-with-isubstr) returns a list of all the strings
in the list <tt>x</tt> that have <tt>a</tt> as a case-insensitve substring.
The substring tests are carried out with @(see isubstrp).</p>

<p>See also @(see collect-syms-with-isubstr), which is similar but for symbol
lists instead of string lists.</p>"

  (defund collect-strs-with-isubstr (a x)
    (declare (xargs :guard (and (stringp a)
                                (string-listp x))))
    (cond ((atom x)
           nil)
          ((str::isubstrp a (car x))
           (cons (car x) (collect-strs-with-isubstr a (cdr x))))
          (t
           (collect-strs-with-isubstr a (cdr x)))))

  (local (in-theory (enable collect-strs-with-isubstr)))

  (defthm collect-strs-with-isubstr-when-atom
    (implies (atom x)
             (equal (collect-strs-with-isubstr a x)
                    nil)))

  (defthm collect-strs-with-isubstr-of-cons
    (equal (collect-strs-with-isubstr a (cons b x))
           (if (str::isubstrp a b)
               (cons b (collect-strs-with-isubstr a x))
             (collect-strs-with-isubstr a x))))

  (defthm member-equal-collect-strs-with-isubstr
    (iff (member-equal b (collect-strs-with-isubstr a x))
         (and (member-equal b x)
              (str::isubstrp a b))))

  (defthm subsetp-equal-of-collect-strs-with-isubstr
    (implies (subsetp-equal x y)
             (subsetp-equal (collect-strs-with-isubstr a x) y)))

  (defthm subsetp-equal-collect-strs-with-isubstr-self
    (subsetp-equal (collect-strs-with-isubstr a x) x)))



(defsection collect-syms-with-isubstr
  :parents (substrings)
  :short "Gather symbols whose names have some (case-insensitive) substring."

  :long "<p>@(call collect-syms-with-isubstr) returns a list of all the symbols
in the list <tt>x</tt> that have <tt>a</tt> as a case-insensitve substring of
their @(see symbol-name).  The substring tests are carried out with @(see
isubstrp).</p>

<p>See also @(see collect-strs-with-isubstr), which is similar but for string
lists instead of symbol lists.</p>"

  (defund collect-syms-with-isubstr (a x)
    (declare (xargs :guard (and (stringp a)
                                (symbol-listp x))))
    (cond ((atom x)
           nil)
          ((str::isubstrp a (symbol-name (car x)))
           (cons (car x) (collect-syms-with-isubstr a (cdr x))))
          (t
           (collect-syms-with-isubstr a (cdr x)))))

  (local (in-theory (enable collect-syms-with-isubstr)))

  (defthm collect-syms-with-isubstr-when-atom
    (implies (atom x)
             (equal (collect-syms-with-isubstr a x)
                    nil)))

  (defthm collect-syms-with-isubstr-of-cons
    (equal (collect-syms-with-isubstr a (cons b x))
           (if (str::isubstrp a (symbol-name b))
               (cons b (collect-syms-with-isubstr a x))
             (collect-syms-with-isubstr a x))))

  (defthm member-equal-collect-syms-with-isubstr
    (iff (member-equal b (collect-syms-with-isubstr a x))
         (and (member-equal b x)
              (str::isubstrp a (symbol-name b)))))

  (defthm subsetp-equal-of-collect-syms-with-isubstr
    (implies (subsetp-equal x y)
             (subsetp-equal (collect-syms-with-isubstr a x) y)))

  (defthm subsetp-equal-collect-syms-with-isubstr-self
    (subsetp-equal (collect-syms-with-isubstr a x) x)))
