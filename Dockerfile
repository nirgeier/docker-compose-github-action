###
### The GitHub Action is based upon the official docker image
###
FROM docker:stable

# Some metadata
LABEL 'name'='Docker Compose Github Action'
LABEL 'maintainer'='nirgeier <nirgeier@gmail.com>'

LABEL 'com.github.actions.name'='Docker Compose Github Action'
LABEL 'com.github.actions.description'='Docker compose action for building, running, and pushing containers'

LABEL 'com.github.actions.icon'='send'
LABEL 'com.github.actions.color'='yellow'

RUN                   \
  apk update  &&      \
  apk upgrade &&      \
  apk add --no-cache  \
  openssh-client      \
  docker-compose

#COPY docker-entrypoint.sh /docker-entrypoint.sh

#ENTRYPOINT ["/docker-entrypoint.sh"]