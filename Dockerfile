FROM python:2.7

WORKDIR /app

ADD . /app

RUN pip install capturer cement coverage numpy pytest pytest-cov

CMD py.test --junitxml=/data/test_report.xml --cov=project --cov-report=xml:/data/coverage.xml
