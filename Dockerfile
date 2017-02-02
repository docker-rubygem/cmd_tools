FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=7.0.0

RUN gem install cmd_tools --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cmd_tools"]
CMD ["--help"]
