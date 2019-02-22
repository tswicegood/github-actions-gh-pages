FROM alpine:3.9 AS deploy
LABEL "name"="push"
LABEL "maintainer"="Travis Swicegood <travis@domain51.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Push gh-pages"
LABEL "com.github.actions.description"="Push the built gh-pages back to GitHub"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

RUN apk add --no-cache git bash openssh-client
COPY entrypoint.bash /entrypoint.bash
ENTRYPOINT [ "/entrypoint.bash" ]
