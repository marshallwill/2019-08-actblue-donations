filings:
	mkdir -p data/filings
	curl https://docquery.fec.gov/dcdev/posted/1413483.fec > data/filings/1413483.fec
	python scripts/extract-schedule-a.py "data/filings/1413483.fec" > data/filings/1413483-schedule-a.csv

load:
	nbexec notebooks/load_actblue.ipynb
