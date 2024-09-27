# hash-env

hash-env for Daddy Knows Best

# history

- 03/08/2024 hash-env initiated, updated README.md
- 09/26/24 updated with the new base image ubuntu 24 [ISSUE-27](https://github.com/daddy-knows-best/hash-env/issues/27)

# how to run

```
$ docker compose pull

$ docker compose run --rm dev-env
05:10:10 ubuntu@751f2cd90584 dev-env ±|readme|→ consul -v
Consul v1.18.0
Revision 349cec17
Build Date 2024-02-26T22:05:50Z
Protocol 2 spoken by default, understands 2 to 3 (agent will automatically use protocol >2 when speaking to compatible agents)

05:10:14 ubuntu@751f2cd90584 dev-env ±|readme|→ packer -v
Packer v1.10.2
05:10:21 ubuntu@751f2cd90584 dev-env ±|readme|→ terraform -v
Terraform v1.7.4
on linux_amd64
05:10:26 ubuntu@751f2cd90584 dev-env ±|readme|→ vault -v
Vault v1.15.6 (615cf6f1dce9aa91bc2035ce33b9f689952218f0), built 2024-02-28T17:07:34Z
05:10:37 ubuntu@751f2cd90584 dev-env ±|readme|→
```
