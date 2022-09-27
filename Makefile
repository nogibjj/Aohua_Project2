install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	echo "configuring and there is just a placeholder function"
	# python -m pytest -vv test_*.py

format:	
	black *.py dblib/*py

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py dblib

all: install lint test