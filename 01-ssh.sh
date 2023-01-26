#!/usr/bin/bash

usage() { echo "Usage: $0 [-p <1025-65535>]" 1>&2; exit 1; }

while getopts ":p:" o; do
    case "${o}" in
        p)
            p=${OPTARG}
            ((p > 1023 && p < 65535)) || usage
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${p}" ]; then
    usage
fi

echo "Changing ssh port number to ${p}, you may need to reconnect after this is done"

sed -i "s/#Port 22/Port ${p}/g" /etc/ssh/sshd_config

service ssh restart
