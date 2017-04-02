ML2DiskConfig [![Status Umbra][status-umbra]][andivionian-status-classifier]
=============

This is a program to set disk icons on Windows platform.

Build
-----

First of all, install build prerequisites: [Paket][paket] and
[PascalABC.NET][pascalabc-net].

There's a convenience script that'll download the prerequisites and install them
into a project-local location: [`scripts/install.ps1`][install-script].

After that, build the project with [`scripts/build.ps1`][build-script]:

```console
$ scripts/install.ps1
$ scripts/build.ps1
```

Consult scripts' parameters sections if you have some specific needs.

After the build, `bin` directory will contain the resulting binary files.

Copyright
---------

This project is distributed under the MIT license (see the
[`License.md`][license] file in the project root).

By submitting a pull request for this project, you agree to license you
contribution under the MIT license to this project.

[build-script]: scripts/build.ps1
[install-script]: scripts/install.ps1
[license]: License.md

[andivionian-status-classifier]: https://github.com/ForNeVeR/andivionian-status-classifier
[paket]: https://fsprojects.github.io/Paket/
[pascalabc-net]: http://pascalabc.net/

[status-umbra]: https://img.shields.io/badge/status-umbra-red.svg
