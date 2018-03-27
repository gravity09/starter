FROM python:2.7

WORKDIR /app

ADD . /app

RUN pip install capturer cement coverage numpy pytest pytest-cov pylint

RUN py.test --junitxml=/data/test_report.xml --cov=project --cov-report=xml:/data/coverage.xml --pylint pylint --generate-rcfile > pylint.cfg

CMD /bin/bash
