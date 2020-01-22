import React from "react";

// reactstrap components
import { Card, CardBody, CardTitle, Container, Row, Col } from "reactstrap";

class Header extends React.Component {
  state = {
    total_alarms: 0,
    total_sensors: 0,
    total_sensor_stations: 0
  }

  componentDidMount() {
    fetch(`http://localhost:4000/dashboard`)
    .then(response => response.json())
    .then(data => {
      this.setState({data: data})
      this.setState({total_alarms: data["TOTAL ALARMS"]})
      this.setState({total_sensors: data["TOTAL SENSORS"]})
      this.setState({total_sensor_stations: data["TOTAL SENSOR STATIONS"]})
    })
    .catch(err => console.log(err))
    
    console.log(this.state.total_alarms)
  }

  render() {
    return (
      <>
        <div className="header bg-gradient-info pb-8 pt-5 pt-md-8">
          <Container fluid>
            <div className="header-body">
              {/* Card stats */}
              <Row>
                <Col lg="6" xl="4">
                  <Card className="card-stats mb-4 mb-xl-0">
                    <CardBody>
                      <Row>
                        <div className="col">
                          <CardTitle
                            tag="h5"
                            className="text-uppercase text-muted mb-0"
                          >Total Alarms
                          </CardTitle>
                          <span className="h2 font-weight-bold mb-0">
                            {
                              this.state.total_alarms
                            }
                          </span>
                        </div>
                        <Col className="col-auto">
                          <div className="icon icon-shape bg-danger text-white rounded-circle shadow">
                            <i className="fas fa-bell" />
                          </div>
                        </Col>
                      </Row>
                    </CardBody>
                  </Card>
                </Col>

                <Col lg="6" xl="4">
                  <Card className="card-stats mb-4 mb-xl-0">
                    <CardBody>
                      <Row>
                        <div className="col">
                          <CardTitle
                            tag="h5"
                            className="text-uppercase text-muted mb-0"
                          >
                            Total Sensors
                          </CardTitle>
                          <span className="h2 font-weight-bold mb-0">
                            {
                              this.state.total_sensors
                            }
                          </span>
                        </div>
                        <Col className="col-auto">
                          <div className="icon icon-shape bg-warning text-white rounded-circle shadow">
                            <i className="fas fa-signal" />
                          </div>
                        </Col>
                      </Row>
                    </CardBody>
                  </Card>
                </Col>

                <Col lg="6" xl="4">
                  <Card className="card-stats mb-4 mb-xl-0">
                    <CardBody>
                      <Row>
                        <div className="col">
                          <CardTitle
                            tag="h5"
                            className="text-uppercase text-muted mb-0"
                          >
                            Total Sensor Station
                          </CardTitle>
                          <span className="h2 font-weight-bold mb-0">
                            {
                              this.state.total_sensor_stations
                            }
                          </span>
                        </div>
                        <Col className="col-auto">
                          <div className="icon icon-shape bg-yellow text-white rounded-circle shadow">
                            <i className="fas fa-charging-station" />
                          </div>
                        </Col>
                      </Row>
                    </CardBody>
                  </Card>
                </Col>
              </Row>
            </div>
          </Container>
        </div>
      </>
    );
  }
}

export default Header;