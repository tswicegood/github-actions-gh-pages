FROM alpine:3.9 AS deploy
LABEL "name"="create-gh-pages-repo"
LABEL "maintainer"="Travis Swicegood <travis@domain51.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Create gh-pages repo"
LABEL "com.github.actions.description"="Prepare a clean gh-pages repo to target"
LABEL "com.github.actions.icon"="loader"
LABEL "com.github.actions.color"="purple"

RUN apk add --no-cache git bash openssh-client
COPY entrypoint.bash /entrypoint.bash
ENTRYPOINT [ "/entrypoint.bash" ]
