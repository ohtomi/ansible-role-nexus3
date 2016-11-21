Nexus 3
=========

This role can be used to install [Nexus Repository Manager 3](https://www.sonatype.com/download-oss-sonatype).

[![Build Status](https://travis-ci.org/ohtomi/ansible-role-nexus3.svg?branch=master)](https://travis-ci.org/ohtomi/ansible-role-nexus3)

Requirements
------------

- Ansible 2.x
- Oracle JVM 8+
- cron
- systemd
- useradd
- userdel
- usermod

Role Variables
--------------

```
## Type: string
#
# Yum package name of Nexus.
#
nexus3_version: nexus-3.1.0-04

## Type: yesno
#
# Whether to enable certificate-validation at downloading the archive file.
#
nexus3_get_url_validate_certs: yes

## Type: integer
#
# Timeout in seconds for downloading the archive file.
#
nexus3_get_url_timeout: 60

## Type: string
#
# The digest of the archive file.
# Format: <algorithm>:<checksum>
#
nexus3_get_url_checksum: "sha256:bf1cd6dcbd010b6c35f50f8923dcf58e77c2f39854ba00d0de8b37f260c6fc0a"

## Type: string
#
# User name to run nexus service.
#
nexus3_username: nexus

## Type: string
#
# Absolute path of folder to extract the archive file on.
# Example: /opt/nexus
#       -> /opt/nexus/nexus-3.x.x-xx (NEXUS_HOME)
#
nexus3_home: /opt/nexus

## Type: string
#
# Absolute path of installed Java executable.
#
nexus3_java_home: ''

## Type: string
#
# Initial heap size.
#
nexus3_vmoptions_ms: 1200M

## Type: string
#
# Maximum heap size.
#
nexus3_vmoptions_mx: 1200M

## Type: string
#
# Relative path of JVM log file at NEXUS_HOME.
#
nexus3_vmoptions_log_file: "../sonatype-work/nexus3/log/jvm.log"

## Type: string
#
# Relative path of Karaf data directory at NEXUS_HOME.
#
nexus3_vmoptions_karaf_data: "../sonatype-work/nexus3"

## Type: string
#
# Relative path of JVM temp directory at NEXUS_HOME.
#
nexus3_vmoptions_java_io_tmpdir: "../sonatype-work/nexus3/tmp"

## Type: integer(0:65535)
#
# Port Nexus is listening on.
#
nexus3_http_port: 8081

## Type: string
#
# IP address Nexus listens on for HTTP requests.
# Default is all interfaces (0.0.0.0).
#
nexus3_listen_address: "0.0.0.0"

## Type: string
#
# HTTP context path Nexus is hosted at.
#nexus3_context_path: "/"
```

Dependencies
------------

This role has no dependencies.

Example Playbook
----------------

This role can be installed, as follows:

$ ansible-galaxy install ohtomi.nexus3

This role can be applied, as follows:

```yaml
- hosts: localhost
  become: yes
  roles:
    - ohtomi.nexus3
```

License
-------

MIT

Author Information
------------------

This role was authored by Kenichi Ohtomi.
