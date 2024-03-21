#!/bin/bash
docker login -u pooja942 -p dckr_pat_urG82l6cCVDQoUCF88Kbz3_P3Kw

if [[ $GIT_BRANCH == "origin/dev" ]]; then

        docker tag nginx pooja942/dev
        docker push pooja942/dev

if [[ $GIT_BRANCH == "origin/master" ]]; then

        docker tag nginx pooja942/prod
        docker push pooja942/prod

else
        echo "failed"
fi
                  
