FROM python:2.7

WORKDIR /app

ADD . /app

RUN pip install capturer cement coverage numpy pytest pytest-cov pylint

RUN pip install pytest-pep8 

RUN py.test --junitxml=/data/test_report.xml --cov=project --cov-report=xml:/data/coverage.xml

RUN py.test --pep8

CMD /bin/bash
