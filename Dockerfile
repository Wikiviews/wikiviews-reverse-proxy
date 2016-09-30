FROM nginx:1.10

MAINTAINER DevWurm <devwurm@devwurm.net>

COPY default.template /etc/nginx/template.d/default.template

CMD /bin/bash -c "envsubst < /etc/nginx/template.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
