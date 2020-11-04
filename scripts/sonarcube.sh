#! /bin/bash

echo "sonar-scanner \
  -Dsonar.projectKey=first-project \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=aa0e08500d505b5362ff994999cf892f19bf7ea0"
