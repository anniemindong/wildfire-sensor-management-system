/*!

=========================================================
* Argon Dashboard React - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard-react
* Copyright 2019 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/argon-dashboard-react/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/
import React from "react";
// node.js library that concatenates classes (strings)
// javascipt plugin for creating charts
import Chart from "chart.js";
// react plugin used to create charts
import { Bar } from "react-chartjs-2";
// reactstrap components
import {reactLocalStorage} from 'reactjs-localstorage';

import {
  Card,
  CardHeader,
  CardBody,
  Table,
  Container,
  Row,
  Col
} from "reactstrap";

// core components
import {
  chartOptions,
  parseOptions,
} from "variables/charts.jsx";

import Header from "components/Headers/Header.jsx";


class Index extends React.Component {
  state = {
    activeNav: 1,
    alarm_info: [],
    last_week_alarms_count: [],
    chartLabel: []

  };

  static defaultProps = {
    center: {
      lat: 59.95,
      lng: 30.33
    },
    zoom: 11
  }
  toggleNavs = (e, index) => {
    e.preventDefault();
    this.setState({
      activeNav: index,
    });
    let wow = () => {
      console.log(this.state);
    };
    wow.bind(this);
    setTimeout(() => wow(), 1000);
    // this.chartReference.update();
  };
  componentWillMount() {
    if (window.Chart) {
      parseOptions(Chart, chartOptions());
    }
  }
  componentDidMount() {
    var user_id = reactLocalStorage.get('user_id');
    console.log("getting name from dashboard")
    console.log(user_id)
    fetch(`http://localhost:4000/dashboard?user_id=${user_id}`)
    .then(response =>response.json())
    .then(data => {
      this.setState({
        data: data,
        alarm_info: data["ALARM INFO"],
        last_week_alarms_count: data["LAST WEEK ALARMS COUNT"],
        chartLabel: data["LAST WEEK CHART LABEL"]

      })
    })
    .catch(err => console.log(err))

    console.log(this.state.alarm_info)
  }

  alarm_summary() {
    let chartData = {
      options: {
        scales: {
          yAxes: [
            {
              ticks: {
                callback: function(value) {
                  if (!(value % 10) || value === 1) {
                    return value;
                  }
                }
              }
            }
          ]
        },
      },
      data: {
        labels: this.state.chartLabel,
        datasets: [
          {
            label: "Total Amount",
            data: this.state.last_week_alarms_count
          }
        ]
      }
    };
    console.log(chartData);
    return chartData;
  }

  tableData() {
    let res = [];
    for (var i = 0; i < this.state.alarm_info.length; i++) {
      res.push(
        <tr key = {i}>
          <td>{this.state.alarm_info[i].sensor_station_id}</td>
          <td>{this.state.alarm_info[i].timestamp}</td>
          <td>{this.state.alarm_info[i].longtitude} ,  {this.state.alarm_info[i].latitude}</td>
          <td>{this.state.alarm_info[i].reason}</td>
        </tr>
      )
    }
    return res;
  }

  render() {
    return (
      <>
        <Header />
        {/* Page content */}
        <Container className="mt--7" fluid>
          <Row>
            <Col xl="12">
              <Card style={{height: 300}} className="shadow">
                <CardHeader className="bg-transparent">
                  <Row className="align-items-center">
                    <div className="col">
                      <h2 className="text-uppercase text-muted ls-1 mb-1">
                        Forest Area Alarm Summary
                      </h2>
                    </div>
                  </Row>
                </CardHeader>
                <CardBody >
                  {/* Chart */}
                  <div style = {{height: 200}} className="chart">
                    <Bar
                      data={this.alarm_summary().data}
                      options={this.alarm_summary().options}
                    />
                  </div>
                </CardBody>
              </Card>
            </Col>
          </Row>

          {/** Table */}
          <Row className="mt-5">
            <Col className="mb-5 mb-xl-0" xl="12">
              <Card className="shadow">
                <CardHeader className="border-0">
                  <Row className="align-items-center">
                    <div className="col">
                      <h3 className="mb-0">Alarms</h3>
                    </div>
                  </Row>
                </CardHeader>
                <Table className="align-items-center table-flush" responsive>
                  <thead className="thead-light">
                    <tr>
                      <th scope="col">Sensor Station ID</th>
                      <th scope="col">Alarmed Date</th>
                      <th scope="col">Location</th>
                      <th scope="col">Reason</th>
                    </tr>
                  </thead>
                  <tbody>
                      {this.tableData()}
                  </tbody>
                </Table>
              </Card>
            </Col>
          </Row>
        </Container>
      </>
    );
  }
}

export default Index;