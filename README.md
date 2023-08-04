# Robi Portal

It's a demo portal that has been created with [Flask](https://flask.palletsprojects.com/en/) framework and [Chart.js](https://www.chartjs.org/) for the Network Analysis Team of [Robi Axiata Limited](https://www.robi.com.bd/en). The primary objective of this project was to enable real-time monitoring of frequently generated KPI data, closely supervised by the Network Analysis Team.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Project Setup

1. Clone this git repository
```bash
git clone https://github.com/sujitdebnath/robi-na-team-monitoring-portal.git
```
2. Install [Python](https://www.python.org/). Then create a virtual environment inside the repo and activate it.
```bash
python3 -m venv <env_name>
source <env_name>/bin/activate
```
3. Download and install the required Python packages for the project.
```bash
pip install -r requirements.txt
```
4. Install the [XAMPP](https://www.apachefriends.org/index.html) web server. Then create and load the database. And finally, run accordingly.

## Deployment

This system currently live on [here](http://robiportal.pythonanywhere.com)

## Built With

* [Flask](https://flask.palletsprojects.com/en/1.1.x/) - The web framework used
* [XAMPP](https://www.apachefriends.org/index.html) - MySQL database

## Authors

* **Sujit Debnath** - *Initial work* - [sujitdebnath](https://github.com/sujitdebnath)
