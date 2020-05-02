$(document).ready(function () {
    
    var canvas = document.getElementById('barChart1');

    var ctx = canvas.getContext('2d');
    Chart.defaults.global.defaultFontFamily = 'Lato';
    Chart.defaults.global.defaultFontSize = 14;
    Chart.defaults.global.defaultFontColor = '#777';

    var chart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: xAxisData1,
            datasets: [{
                label: labelText1,
                data: yAxisData1,
                backgroundColor: '#67B7D1',
                borderWidth: 1,
                borderColor: '#338BA8',
                hoverBorderWidth: 3,
                hoverBorderColor: '#1E5162'
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            title: {
                display: true,
                text: titleText1,
                fontSize: 18
            },
            legend: {
                display: false
            },
            tooltips: {
                enabled: true
            }
        }
    });
});
