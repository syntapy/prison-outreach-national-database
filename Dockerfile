from ruby:2.7.4-alpine

run apk add build-base; gem install rails
run apk upgrade; apk add --no-cache git sqlite sqlite-dev tzdata

expose 3000

ENV PROJECT_NAME prison-outreach-national-database

volume "${PROJECT_NAME}"

cmd cd "{PROJECT_NAME}"; rails server
