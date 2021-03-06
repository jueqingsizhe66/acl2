Community ACL2 System and Books
===============================

The ACL2 theorem proving environment consists of two parts: The ACL2
System and The ACL2 Books.  This repository contains both.

### ACL2 System

The included version of the ACL2 System is the latest, under-development
version of the [ACL2 Theorem Prover][ACL2].  It is updated only by the
ACL2 authors, Matt Kaufmann and J Moore.

**WARNING**: The ACL2 System authors consider the snapshots of the
system in this repository to be **experimental**; they may be
incomplete, fragile, and unable to pass our own regression. If you want
a stable system, you should instead download an official, released
version of ACL2 from the [ACL2 Home Page][ACL2].

[ACL2]: http://www.cs.utexas.edu/users/moore/acl2 "ACL2 Home Page"

### ACL2 Books

The books/ directory of this repository comprises the Community Books,
which are the canonical collection of open-source libraries for the ACL2
System.

### Documentation

The [Combined ACL2 + Books Manual][combined manual] has extensive
documentation for many books, and also for ACL2 itself. You can follow a
link on that page to download an offline copy.  That manual corresponds
to the most recent ACL2 release; there is also a reasonably up-to-date
[manual that corresponds to this repository][manual].

[manual]: http://www.cs.utexas.edu/users/moore/acl2/manuals/current/manual/index.html
[combined manual]: http://www.cs.utexas.edu/users/moore/acl2/current/combined-manual/index.html


### Obtaining the Source Code

#### Latest Stable Release

You may wish to download a pair of gzipped tarfiles: the [ACL2
System][installation] and the [ACL2 books][acl2.org].  Make sure you
grab the same version, which should generally be for the most recent
ACL2 release.

In the future we expect that you will be able to check out both at once
using [git] by checking out one of the Tags, using syntax such as the
following.

```
git clone git://github.com/acl2/acl2; cd acl2; git checkout acl2-7.0
```

[installation]: http://www.cs.utexas.edu/users/moore/acl2/current/HTML/installation/installation.html
[acl2.org]: http://acl2.org/index.html
[git]: http://git-scm.com


#### Experimental Development Version

To check out an effectively read-only copy of the repository using
[git], run:

```
git clone git://github.com/acl2/acl2
```

To check out a copy of the repository that can be used to write back to
github, run:

```
git clone https://github.com/acl2/acl2
```

### Contributing

See the wiki page for [our discussion on how to contribute][git tips].

Even though we have merged the Community Books (formerly acl2-books) and
ACL2 System (formerly acl2-devel) repositories into one, changes should
be made only to the `books/` subdirectory unless you are Matt Kaufmann
or J Moore, since everything outside `books/` is part of the ACL2
system.  (If you have suggestions for system changes, they should be
emailed to [Matt or J](mailto:kaufmann@cs.utexas.edu), as has been done
in the past.)

[git tips]: https://code.google.com/p/acl2-books/wiki/ACL2RepoGitTips

### Staying Informed

We invite anyone who is using this repository to join the [acl2-books
mailing list][acl2-books], which receives commit messages and other
discussion related to ACL2 system- and book-related development.

[acl2-books]: http://groups.google.com/group/acl2-books


### Contributors wanted!

Everyone can contribute documentation and advice to our [wiki] and
discuss [problems and feature requests][bugtracker].

If you would like to contribute to this repository, email [Jared
Davis](mailto:jared@centtech.com) or [David
Rager](mailto:ragerdl@gmail.com) and ask them to add you to the project.
Please note the [guidelines for book development][books guidelines].

[wiki]: https://github.com/acl2/acl2/wiki
[bugtracker]: https://github.com/acl2/acl2/issues
[books guidelines]: https://github.com/acl2/acl2/wiki/Committing-code
