ls
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 533267104339.dkr.ecr.us-east-2.amazonaws.com
docker build -t react2 .
docker tag react2:latest 533267104339.dkr.ecr.us-east-2.amazonaws.com/react2:latest
docker push 533267104339.dkr.ecr.us-east-2.amazonaws.com/react2:latest
