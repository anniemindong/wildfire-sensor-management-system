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
import classnames from "classnames";
// javascipt plugin for creating charts
import Chart from "chart.js";
// react plugin used to create charts
import { Line } from "react-chartjs-2";

// reactstrap components
import {
  Button,
  Card,
  CardHeader,
  CardBody,
  FormGroup,
  Form,
  Input,
  Container,
  Row,
  Col,
  CardTitle,
  Badge,
  NavItem,
  NavLink,
  Nav
} from "reactstrap";

// core components
import {
  chartOptions,
  parseOptions,
  chartExample1
} from "variables/charts.jsx";

// core components
import HeaderPure from "components/Headers/HeaderPure.jsx";

class Profile extends React.Component {
  state = {
    activeNav: 1,
    data: {},
    sensorId : "",
    sensorStationId: "",
    chartExample1Data: "data2",
    weekChartLabels: [],
    weekChartData:[],
    todayChartLabels:[],
    todayChartData:[]

  };

  getData = (event) => {
    const {sensorId, sensorStationId} = this.state
    fetch(`http://localhost:4000/sensor?sensor_id=${sensorId}&sensor_station_id=${sensorStationId}`)
    .then(response => response.json())
    .then(data => {
      console.log(data["sensor reading last week"])
      this.setState({data: data})
      this.setState({weekChartLabels: data["sensor reading last week label"]})
      this.setState({weekChartData: data["sensor reading last week"]})
      this.setState({todayChartLabels: data["sensor reading today label"]})
      this.setState({todayChartData: data["sensor reading today"]})
      console.log(this.state.weekChartLabels)
      console.log(this.state.weekChartData)
      console.log(this.state.todayChartLabels)
      console.log(this.state.todayChartData)
    })
    .catch(err => console.log(err))
    event.preventDefault();
  }

  handleSensorIdChange = (event) =>  {
    this.setState({sensorId: event.target.value});
    console.log(this.state.sensorId)
  }

  handleSensorStationIdChange = (event) =>  {
    this.setState({sensorStationId: event.target.value});
    console.log(this.state.sensorStationId)
  }

  toggleNavs = (e, index) => {
    e.preventDefault();
    this.setState({
      activeNav: index,
      chartExample1Data:
        this.state.chartExample1Data === "data1" ? "data2" : "data1"
    });
    console.log("data1 or data2")
    console.log(this.state.chartExample1Data)
    console.log("today's data")
    console.log(this.state.todayChartData)
    console.log("last week's data")
    console.log(this.state.weekChartData)
    // let wow = () => {
    //   console.log(this.state);
    // };
    // wow.bind(this);
    // setTimeout(() => wow(), 1000);
    // this.chartReference.update();
  };
  componentWillMount() {
    if (window.Chart) {
      parseOptions(Chart, chartOptions());
    }
  }

  render() {
    const {sensorId, sensorStationId} = this.state
    return (
      <>
        <HeaderPure />
        {/* Page content */}
        <Container className="mt--7" fluid>
          <Row>
            <Col className="order-xl-1" xl="8">
              <Card className="bg-secondary shadow">
                <CardBody>
                  <h3 className="mb-0">Search Sensor</h3>
                  <Form>
                    <h6 className="heading-small text-muted mb-4">
                      Input Sensor information
                    </h6>
                    <div className="pl-lg-4"> 
                      <form onSubmit={this.getData}>
                      <Row>
                        <Col lg="6">
                          <FormGroup>
                            <label
                              className="form-control-label"
                              htmlFor="input-first-name"
                            >
                              Sensor Id
                            </label>
                            <Input
                              className="form-control-alternative"
                              placeholder={sensorId}
                              type="text"
                              onChange={this.handleSensorIdChange}
                              required
                            />
                          </FormGroup>
                        </Col>                        
                        <Col lg="6">
                          <FormGroup>
                            <label
                              className="form-control-label"
                              htmlFor="input-last-name"
                            >
                              Sensor Station Id
                            </label>
                            <Input
                              className="form-control-alternative"
                              placeholder={sensorStationId}
                              type="text"
                              onChange={this.handleSensorStationIdChange}
                              required
                            />
                          </FormGroup>
                        </Col>
                        </Row>
                        <Button
                          className="float-right"
                          color="primary"
                          size="lg"
                          type="submit"
                        >
                          Search
                        </Button>          
                      </form> 
                    </div>
                  </Form>
                </CardBody>
              </Card>
            </Col>

            <Col className="order-xl-1" xl="4">
              <Card className="card-stats mb-4 mb-xl-0">
                  <CardBody>
                    <Row>
                      <div className="col">
                        <CardTitle
                          tag="h5"
                          className="text-uppercase text-muted mb-0"
                        >
                          Sensor Reading
                        </CardTitle>
                        <span className="h2 font-weight-bold mb-0">
                          {
                            this.state.data["sensor data"]
                          }
                        </span>
                      </div>
                      <Col className="col-auto">
                        <div className="icon icon-shape bg-green text-white rounded-circle shadow">
                          <i class="fas fa-thermometer-quarter"></i>
                        </div>
                      </Col>
                    </Row>
                    <p className="mt-3 mb-0 text-muted text-sm">
                      <span className="text-success mr-2">
                        {this.state.data["rate"] >= 0 ? <i className="fa fa-arrow-up" /> : <i className="fa fa-arrow-down" /> }
                        {" "+this.state.data["rate"]+" %"}
                      </span>{" "}
                      <span className="text-nowrap">Since Last 15 Minutes</span>
                    </p>
                  </CardBody>
                </Card>
            

                <Card className="card-stats mb-4 mb-xl-0">
                  <CardBody>
                    <Row>
                      <div className="col">
                        <CardTitle
                          tag="h5"
                          className="text-uppercase text-muted mb-0"
                        >
                          Sensor Status
                        </CardTitle>
                        <span className="h2 font-weight-bold mb-0">
                            <span className="text-success mr-2">
                              {this.state.data["status"] === "NORMAL" ? <Badge color="success" pill>Normal</Badge> : this.state.data["status"] === "BATTERY LOW"? <Badge color="warning" pill>Battery Low</Badge>:<Badge color="danger" pill>Danger</Badge> }
                            </span>{" "}
                        </span>
                      </div>
                      <Col className="col-auto">
                          <div className="icon icon-shape bg-warning text-white rounded-circle shadow">
                            <i class="fas fa-exclamation-circle"></i>
                          </div>
                      </Col>
                    </Row>
                    
                  </CardBody>
                </Card>
              

              <Card className="card-stats mb-4 mb-xl-0">
                  <CardBody>
                    <Row>
                      <div className="col">
                        <CardTitle
                          tag="h5"
                          className="text-uppercase text-muted mb-0"
                        >
                          Sensor Information
                        </CardTitle>
                        <span className="h4 font-weight-bold mb-0">
                          installation time: {this.state.data["installation_time"]} 
                        </span>
                      </div>
                      <Col className="col-auto">
                        <div className="icon icon-shape bg-blue text-white rounded-circle shadow">
                          <i class="far fa-comment-dots"></i>
                        </div>
                      </Col>
                    </Row>
                  </CardBody>
                </Card>
              </Col>
          </Row>
          <Row>
          <Col className="order-xl-1" xl="3">
            <Card className="bg-secondary shadow">
              <CardBody>
                <Row>
                  <div className="col">
                    <h3 className="mb-0">Sensor Location</h3>
                    <h6 className="heading-small text-muted mb-4">
                      Longtitude, Latitude 
                    </h6>
                    <span className="h2 font-weight-bold mb-0">
                          {
                            this.state.data["sensor location"]
                          }
                    </span>
                  </div>
                  <Col className="col-auto">
                          <div className="icon icon-shape bg-info text-white rounded-circle shadow">
                            <i class="fas fa-map-marked"></i>
                          </div>
                  </Col>

                </Row>
              </CardBody>
            </Card>
            </Col>
            <Col className="order-xl-1" xl="3">
            <Card className="bg-secondary shadow">
              <CardBody>
                <Row>
                  <div className="col">
                    <h3 className="mb-0">Sensor Station Location</h3>
                        <h6 className="heading-small text-muted mb-4">
                          Longtitude, Latitude
                        </h6>
                        <span className="h2 font-weight-bold mb-0">
                              {
                                this.state.data["sensor station location"]
                              }
                        </span>
                    </div>
                    <Col className="col-auto">
                          <div className="icon icon-shape bg-info text-white rounded-circle shadow">
                            <i class="fas fa-map-pin"></i>
                          </div>
                    </Col>

                  </Row>
              </CardBody>
            </Card>
            </Col>
            <Col className="order-xl-1" xl="6">
            <Card className="bg-secondary shadow">
              <CardBody>
                <Row>
                  <div className="col">
                    <h3 className="mb-0">Other sensors under this sensor station</h3>
                        <h6 className="heading-small text-muted mb-4">
                          Sensor IDs 
                        </h6>
                        <span className="h2 font-weight-bold mb-0">
                          {this.state.data["sensor station data"] && this.state.data["sensor station data"].map(sensor => sensor+" ")}
                        </span>
                  </div>
                  <Col className="col-auto">
                          <div className="icon icon-shape bg-info text-white rounded-circle shadow">
                            <i class="fas fa-project-diagram"></i>
                          </div>
                    </Col>
                </Row>
              </CardBody>
            </Card>
            </Col>
          </Row>
           {/* Divider */}
          <hr className="my-12" />
          <Row>
          <Col className="mb-5 mb-xl-0" xl="12">
              <Card className="bg-gradient-default shadow">
                <CardHeader className="bg-transparent">
                  <Row className="align-items-center">
                    <div className="col">
                      <h6 className="text-uppercase text-light ls-1 mb-1">
                        Overview
                      </h6>
                      <h2 className="text-white mb-0">Sensor Reading</h2>
                    </div>
                    <div className="col">
                      <Nav className="justify-content-end" pills>
                        <NavItem>
                          <NavLink
                            className={classnames("py-2 px-3", {
                              active: this.state.activeNav === 1
                            })}
                            href="#pablo"
                            onClick={e => this.toggleNavs(e, 1)}
                          >
                            <span className="d-none d-md-block">Today</span>
                            <span className="d-md-none">T</span>
                          </NavLink>
                        </NavItem>
                        <NavItem>
                          <NavLink
                            className={classnames("py-2 px-3", {
                              active: this.state.activeNav === 2
                            })}
                            data-toggle="tab"
                            href="#pablo"
                            onClick={e => this.toggleNavs(e, 2)}
                          >
                            <span className="d-none d-md-block">Week</span>
                            <span className="d-md-none">W</span>
                          </NavLink>
                        </NavItem>
                      </Nav>
                    </div>
                  </Row>
                </CardHeader>
                <CardBody>
                  {/* Chart */}
                  <div className="chart">
                    <Line
                      data={this.state.chartExample1Data==="data1" ? {
                        labels: this.state.weekChartLabels,
                        datasets: [
                          {
                            label: "Sensor Reading",
                            data: this.state.weekChartData
                          }
                        ]
                      } : {
                        labels: this.state.todayChartLabels,
                        datasets: [
                          {
                            label: "Sensor Reading",
                            data: this.state.todayChartData
                          }
                        ]
                      }}
                      options={chartExample1.options}
                      getDatasetAtEvent={e => console.log(e)}
                    />
                  </div>
                </CardBody>
              </Card>
            </Col>
          </Row>
          
        </Container>
      </>
    );
  }
}

export default Profile;
