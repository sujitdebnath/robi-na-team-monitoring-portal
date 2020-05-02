from flask import render_template, url_for
from robiportal import app
from robiportal.dbconnect import connection
from robiportal.datamodify import getData
from datetime import datetime, timedelta

@app.route("/")
@app.route("/tmc_summary")
def tmc_summary():
    try:
        data_dict = dict()

        conn = connection()
        cursor = conn.cursor()

        query="SELECT date_col, region, target, kpi FROM CSSR_2G ORDER BY region, date_col"
        cursor.execute(query)
        data = cursor.fetchall()
        data_dict['CSSR'] = getData(data)

        query="SELECT date_col, region, target, kpi FROM CDR_2G  ORDER BY region, date_col"
        cursor.execute(query)
        data = cursor.fetchall()
        data_dict['CDR'] = getData(data)

        query="SELECT date_col, region, target, kpi FROM SASR_3G  ORDER BY region, date_col"
        cursor.execute(query)
        data = cursor.fetchall()
        data_dict['SASR'] = getData(data)

        query="SELECT date_col, region, target, kpi FROM DASR_4G  ORDER BY region, date_col"
        cursor.execute(query)
        data = cursor.fetchall()
        data_dict['DASR'] = getData(data)

        return render_template('tmc_summary.html', data=data_dict)
    except Exception as e:
        return str(e)

@app.route("/tmc_summary/v2")
def tmc_summary_v2():
    try:
        data_dict = dict()

        conn = connection()
        cursor = conn.cursor()

        query="""SELECT
                    region,
                    AVG(target) AS `target`,
                    SUM(CASE WHEN rank_col=1 THEN kpi END) AS date1,
                    SUM(CASE WHEN rank_col=2 THEN kpi END) AS date2,
                    SUM(CASE WHEN rank_col=3 THEN kpi END) AS date3,
                    SUM(CASE WHEN rank_col=4 THEN kpi END) AS date4,
                    SUM(CASE WHEN rank_col=5 THEN kpi END) AS date5,
                    SUM(CASE WHEN rank_col=6 THEN kpi END) AS date6,
                    SUM(CASE WHEN rank_col=7 THEN kpi END) AS date7
                FROM
                    (SELECT date_col, region, target, kpi, rank() OVER (partition by region order by date_col) AS `rank_col`
                    FROM CSSR_2G) t
                GROUP BY region;"""

        cursor.execute(query)
        data = cursor.fetchall()
        data_dict['CSSR'] = data

        query="""SELECT
                    region,
                    AVG(target) AS `target`,
                    SUM(CASE WHEN rank_col=1 THEN kpi END) AS date1,
                    SUM(CASE WHEN rank_col=2 THEN kpi END) AS date2,
                    SUM(CASE WHEN rank_col=3 THEN kpi END) AS date3,
                    SUM(CASE WHEN rank_col=4 THEN kpi END) AS date4,
                    SUM(CASE WHEN rank_col=5 THEN kpi END) AS date5,
                    SUM(CASE WHEN rank_col=6 THEN kpi END) AS date6,
                    SUM(CASE WHEN rank_col=7 THEN kpi END) AS date7
                FROM
                    (SELECT date_col, region, target, kpi, rank() OVER (partition by region order by date_col) AS `rank_col`
                    FROM CDR_2G) t
                GROUP BY region;"""

        cursor.execute(query)
        data = cursor.fetchall()
        data_dict['CDR'] = data

        query="""SELECT
                    region,
                    AVG(target) AS `target`,
                    SUM(CASE WHEN rank_col=1 THEN kpi END) AS date1,
                    SUM(CASE WHEN rank_col=2 THEN kpi END) AS date2,
                    SUM(CASE WHEN rank_col=3 THEN kpi END) AS date3,
                    SUM(CASE WHEN rank_col=4 THEN kpi END) AS date4,
                    SUM(CASE WHEN rank_col=5 THEN kpi END) AS date5,
                    SUM(CASE WHEN rank_col=6 THEN kpi END) AS date6,
                    SUM(CASE WHEN rank_col=7 THEN kpi END) AS date7
                FROM
                    (SELECT date_col, region, target, kpi, rank() OVER (partition by region order by date_col) AS `rank_col`
                    FROM SASR_3G) t
                GROUP BY region;"""

        cursor.execute(query)
        data = cursor.fetchall()
        data_dict['SASR'] = data

        query="""SELECT
                    region,
                    AVG(target) AS `target`,
                    SUM(CASE WHEN rank_col=1 THEN kpi END) AS date1,
                    SUM(CASE WHEN rank_col=2 THEN kpi END) AS date2,
                    SUM(CASE WHEN rank_col=3 THEN kpi END) AS date3,
                    SUM(CASE WHEN rank_col=4 THEN kpi END) AS date4,
                    SUM(CASE WHEN rank_col=5 THEN kpi END) AS date5,
                    SUM(CASE WHEN rank_col=6 THEN kpi END) AS date6,
                    SUM(CASE WHEN rank_col=7 THEN kpi END) AS date7
                FROM
                    (SELECT date_col, region, target, kpi, rank() OVER (partition by region order by date_col) AS `rank_col`
                    FROM DASR_4G) t
                GROUP BY region;"""

        cursor.execute(query)
        data = cursor.fetchall()
        data_dict['DASR'] = data
        
        dates = [(datetime.today() - timedelta(days=i+1)).strftime('%d-%b') for i in range(7)][::-1]
        data_dict['dates'] = dates

        return render_template('tmc_summary_v2.html', posts=data_dict)
    except Exception as e:
        return str(e)

@app.route("/voice_traffic")
def voice_traffic():
    try:
        conn = connection()
        cursor = conn.cursor()

        query="SELECT * FROM voice_traffic_table;"
        cursor.execute(query)

        data_dict = dict()
        data = cursor.fetchall()
        data_dict["data"] = data

        # graph 1 data entry
        xAxis = [x[1].strftime("%d-%b") for x in data]
        yAxis = [y[2] for y in data]

        data_dict["graph1x"] = xAxis
        data_dict["graph1y"] = yAxis

         # graph 2 data entry
        yAxis = [y[3] for y in data]

        data_dict["graph2x"] = xAxis
        data_dict["graph2y"] = yAxis

        return render_template('voice_traffic.html', data=data_dict)
    except Exception as e:
        return str(e)

@app.route("/data_traffic")
def data_traffic():
    try:
        conn = connection()
        cursor = conn.cursor()

        query="SELECT * FROM data_traffic_table;"
        cursor.execute(query)

        data_dict = dict()
        data = cursor.fetchall()
        data_dict["data"] = data

        # graph 1 data entry
        xAxis = [x[1].strftime("%d-%b") for x in data]
        yAxis = [y[2] for y in data]

        data_dict["graph1x"] = xAxis
        data_dict["graph1y"] = yAxis

         # graph 2 data entry
        yAxis = [y[3] for y in data]

        data_dict["graph2x"] = xAxis
        data_dict["graph2y"] = yAxis

        return render_template('data_traffic.html', data=data_dict)
    except Exception as e:
        return str(e)

@app.template_filter()
def numberFormat(value):
    return format(int(value), ',d')

    