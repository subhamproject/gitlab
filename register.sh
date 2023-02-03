#!/bin/bash

gitlab-runner register -n --url https://gitlab.com/ --registration-token XXXXXXXXXXXXXX --executor docker --description "Docker Runner" --tag-list docker-runner --docker-image alpine

gitlab-runner register -n --url https://gitlab.com/ --registration-token XXXXXXXXXXX --executor docker --description "Docker Second Runner" --tag-list "docker,aws"  --docker-image alpine --run-untagged="true" --locked="false" --access-level="not_protected"
