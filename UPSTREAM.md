# Upstream

| | |
| --- | --- |
| Project | secDevLabs (Globo.com) |
| Repository | https://github.com/globocom/secDevLabs |
| App | `owasp-top10-2021-apps/a7/saidajaula-monster` |
| Version | master (secDevLabs has no releases) |
| Commit | 10be438496e928c66567749f0aaf0bb976052bc9 |
| Licence | BSD-3-Clause |

The app folder [`owasp-top10-2021-apps/a7/saidajaula-monster`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a7/saidajaula-monster) of that commit is vendored unchanged, without its Git history,
split so that each part sits in the build folder of the machine that uses it:

| Upstream path (in the app folder) | Here |
| --- | --- |
| `db/` | `build/db/app/db/` |
| everything else | `build/app/app/` |

Each `build/<machine>/Dockerfile` says in its header comment how it differs from upstream:

- `build/app/`: upstream's `deployments/Dockerfile` with the application copied into the image (upstream's compose file mounts it from the host) and the environment of upstream's compose file baked in.
- `build/db/`: the `mariadb:10.6.3` service of upstream's compose file with its environment baked in and upstream's `db/init.sql` copied to `/docker-entrypoint-initdb.d/` (upstream mounts the folder).

To update, replace the vendored folders with a newer secDevLabs commit, then change this file.
