# secDevLabs SaidaJaula Monster Fit

[secDevLabs](https://github.com/globocom/secDevLabs)' [`owasp-top10-2021-apps/a7/saidajaula-monster`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a7/saidajaula-monster) app, by Globo.com and the
secDevLabs contributors: a Flask gym site on MariaDB whose session cookie is a base64 JSON document with an unkeyed SHA-256 hash, an Identification and Authentication Failure that lets a member become admin. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, built from
the vendored app folder (see [UPSTREAM.md](UPSTREAM.md)).

| Machine | Service |
| --- | --- |
| app | SaidaJaula Monster Fit on port 10002 |
| db | MariaDB 10.6.3 on port 3306 (lab network only) |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then open http://localhost:10002/, register and log in. The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM
(`cloud-docker`) or on Kubernetes. Lab guide: the app's
[README](https://github.com/globocom/secDevLabs/blob/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a7/saidajaula-monster/README.md), with the attack narrative and the secDevLabs walkthrough.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

BSD-3-Clause, as secDevLabs ([LICENSE](LICENSE)). The third-party software inside the images keeps
its own licence. This application is deliberately vulnerable: keep it isolated.
