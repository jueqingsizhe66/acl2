; ACL2 Quicklisp Interface
; Copyright (C) 2008-2014 Centaur Technology
;
; Contact:
;   Centaur Technology Formal Verification Group
;   7600-C N. Capital of Texas Highway, Suite 300, Austin, TX 78731, USA.
;   http://www.centtech.com/
;
; License: (An MIT/X11-style license)
;
;   Permission is hereby granted, free of charge, to any person obtaining a
;   copy of this software and associated documentation files (the "Software"),
;   to deal in the Software without restriction, including without limitation
;   the rights to use, copy, modify, merge, publish, distribute, sublicense,
;   and/or sell copies of the Software, and to permit persons to whom the
;   Software is furnished to do so, subject to the following conditions:
;
;   The above copyright notice and this permission notice shall be included in
;   all copies or substantial portions of the Software.
;
;   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;   DEALINGS IN THE SOFTWARE.
;
; Original author: Jared Davis <jared@centtech.com>

(in-package "ACL2")
(include-book "base")
(include-book "bordeaux")
(include-book "cl-fad")
(include-book "hunchentoot")
(include-book "osicat")
(include-book "uiop")

(defsection quicklisp
  :parents (acl2::interfacing-tools)
  :short "An ACL2 wrapper for the <a
href='http://www.quicklisp.org'>Quicklisp</a> system for installing Lisp
libraries."

  :long "<h3>About Quicklisp</h3>

<p>Quicklisp is a Common Lisp equivalent to tools like <a
href='http://www.cpan.org/'>CPAN</a> for <a
href='http://www.perl.org/'>Perl</a>, or <a
href='http://rubygems.org/'>RubyGems</a> for <a
href='http://www.ruby-lang.org/'>Ruby</a>.  It lets you to easily install and
load the latest versions of Common Lisp libraries (and their dependencies).</p>

<p>If you don't know much about Quicklisp and are wanting to find out about the
available libraries, the following may be useful:</p>

<ul>

<li><a href='http://www.cliki.net/'>CLiki</a> is a Common Lisp wiki.  See
especially the page about <a
href='http://www.cliki.net/Current%20recommended%20libraries'>recommended
libraries</a>.</li>

<li><a href='http://quickdocs.org/'>Quickdocs</a> purports to provide
documentation for all of the libraries in Quicklisp.</li>

</ul>


<h3>The ACL2 Quicklisp Book</h3>

<p>To make it easy to use Quicklisp from ACL2, we have a wrapper book, which of
course requires a <see topic='@(url defttag)'>trust tag</see>:</p>

@({
    (include-book \"centaur/quicklisp/base\" :dir :system)
})

<p><b>NOTE:</b> this book isn't automatically certified when you just run
@('make') in the acl2-books directory.  You have to explicitly tell @('make')
that you want to use Quicklisp&mdash;e.g.,</p>

@({
    cd [...]/acl2-sources/books
    make USE_QUICKLISP=1 ...
})

<p>The @('base') book really is just a way to get Quicklisp itself loaded into
an ACL2 session.  It also (locally) loads the libraries that we expect to use,
which ensures everything gets downloaded at the same time, and avoids potential
problems with loading Quicklisp libraries during parallel builds.</p>

<p>Other files in the Quicklisp directory are named after the Common Lisp
libraries they load, and the @('top') book loads all of the libraries that we
have been currently using.</p>

<h3>Installing Quicklisp Behind a Proxy</h3>

<p>See Section @('Using a Proxy') in @(see books-certification).</p>

<h3>Practical Howto</h3>

<p>So how do you actually use the Quicklisp book to gain access to a Common
Lisp library?  For instance, say we want to make use of the <a
href='http://common-lisp.net/project/cl-json/'>CL-JSON</a> library.</p>

<p>Normally you would do something like this:</p>

@({
    ; ** my-book.lisp
    (in-package \"MY-PKG\")

    ; ** Load Quicklisp
    (include-book \"centaur/quicklisp/base\" :dir :system)

    ; ** [OPTIONAL] develop a logical story so you can use the
    ; ** library from proper ACL2 functions...
    (defun foo (x y z)
      (declare (xargs :guard ...))
      (progn$
       (er hard? 'foo \"Raw lisp definition not installed?\")
       (logical-story-of-foo x y z)))

    ; ** Add a ttag since we're going to use include-raw
    (defttag :my-book)

    ; ** Tell cert.pl that we're going to be loading raw Lisp code
    ;; (depends-on \"my-book-raw.lsp\")

    ; ** Actually include the raw Lisp code for our book
    (include-raw \"my-book-raw.lsp\"
                 :do-not-compile t
                 :host-readtable t)
})

<p>You usually need to use the @(':host-readtable') option because real Common
Lisp libraries will use things (packages, floats, etc.) that ACL2's reader will
reject.  You usually need to use @(':do-not-compile') because otherwise you
tend to not have the right packages around at compile time.  You may be able to
work around that using @('eval-when').</p>

<p>The corresponding raw file, then would look something like this:</p>

@({
    ; ** my-book-raw.lsp
    (in-package \"MY-PKG\")

    ; ** Tell Quicklisp we want to use the CL-JSON library
    (ql:quickload \"cl-json\")

    ; ** Redefine our interface functions, freely using cl-json
    ; ** functionality
    (defun foo (x y z)
      ...)
})")
