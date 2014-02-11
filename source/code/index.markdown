---
layout: page
title: "code"
sharing: true
footer: true
---

Bio4j is developed in **Java** and **Scala**, licensed under  the **[AGPLv3](www.gnu.org/licenses/agpl-3.0.html)** license. All development happens in GitHub, under the [bio4j](https://github.com/bio4j) organization; in particular the [bio4j/bio4j](https://github.com/bio4j/bio4j) repository acts as an entry point for the whole codebase.

### contributing

With respect to contribution formalities we try to:

- keep things as **simple** as possible for everyone
- make sure that things stay **open** and **available** under any circumstances

Guided by that, for contributors we just require that

1. you agree to the standard text in the _[Developer Certificate of Origin 1.1](http://elinux.org/Developer_Certificate_Of_Origin)_
2. you sign your commits using `git commit --signoff`

The sign-off is a simple line at the end of the commit message for the patch or pull request, which certifies that you wrote it or otherwise have the right to pass it on as an open-source patch. The rules are pretty simple: if you can certify what is said in the [Developer Certificate of Origin 1.1](http://elinux.org/Developer_Certificate_Of_Origin) (see also below) then you just add a line saying

```
Signed-off-by: Random J Developer <random@developer.example.org>
```

When committing using the command line you can sign off using the `--signoff` or `-s` flag. This adds a `Signed-off-by` line by the committer at the end of the commit log message.

``` bash
git commit -s -m "Commit message"
```

Developer Certificate of Origin 1.1

```
Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the best
    of my knowledge, is covered under an appropriate open source
    license and I have the right under that license to submit that
    work with modifications, whether created in whole or in part
    by me, under the same open source license (unless I am
    permitted to submit under a different license), as indicated
    in the file; or

(c) The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.
```