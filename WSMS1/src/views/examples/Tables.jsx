/*!

=========================================================
* Argon Dashboard React - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard-react
* Copyright 2019 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/argon-dashboard-react/blob/master/LICENSE.md)

* Coded by Creative Tim
<input placeholder="longtitude" type="text"  /> <input placeholder="latitude" type="text"  />
=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/
import React from "react";

// reactstrap components
import {
  Col,
  Button,
  Card,
  CardHeader,
  CardBody,
  CardFooter,
  Table,
  Container,
  Form,
  Row,
  Input
} from "reactstrap";
// core components
//<input placeholder="longtitude" type="text"  /> <input placeholder="latitude" type="text"  />
import HeaderPure from "components/Headers/HeaderPure.jsx";

class Tables extends React.Component {
  addSensor = (event) => {
    const data = {
      sensor_id: this.state.sensor_id,
      latitude: this.state.latitude,
      longtitude: this.state.longtitude,
      status: this.state.status,
      installation_time: this.state.installation_time,
      sensor_station_id:this.state.sensor_station_id,
    }

    fetch('http://localhost:4000/sensor', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
        // 'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: JSON.stringify(data)
    })
      .then(res => res.json())
      .then((data) => {
        console.log(data)
        alert(data.response)
      })
      .catch(console.log)
  }

  deleteSensor = (event) => {
    const data = {
      sensor_id: this.state.sensor_id,
    }

    fetch('http://localhost:4000/sensor', {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json'
        // 'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: JSON.stringify(data)
    })
      .then(res => res.json())
      .then((data) => {
        console.log(data)
        alert(data.response)
      })
      .catch(console.log)
  }

  addSensorStation = (event) => {
    const data = {
      sensor_station_id: this.state.sensor_station_id,
      latitude: this.state.latitude,
      longtitude: this.state.longtitude,
    }

    fetch('http://localhost:4000/sensor_station', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
        // 'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: JSON.stringify(data)
    })
      .then(res => res.json())
      .then((data) => {
        console.log(data)
        alert(data.response)
      })
      .catch(console.log)
  }

  deleteSensorStation = (event) => {
    const data = {
      sensor_station_id: this.state.sensor_station_id,
    }

    fetch('http://localhost:4000/sensor_station', {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json'
        // 'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: JSON.stringify(data)
    })
      .then(res => res.json())
      .then((data) => {
        console.log(data)
        alert(data.response)
      })
      .catch(console.log)
  }

  render() {
    return (
      <>
        <HeaderPure />
        {/* Page content */}
        <Container className="mt--7" fluid>
          {/** Table */}
          {/* <Row className="mt-5"> */}
          <Col className="mb-5 mb-xl-0" xl="12">
            <Card className="bg-secondary shadow" >
              <CardHeader className="border-0">
                <Row className="align-items-center">
                  <div className="col">
                    <h3 className="mb-0">Sensor</h3>
                  </div>
                </Row>
              </CardHeader>

              <CardBody >
                <Form>
                  <form onSubmit={this.addSensor}>
                    <Table className="align-items-center table-flush" responsive>
                      <tbody>
                        <tr>
                          <th scope="col">Sensor ID</th>
                          <td><Input
                            className="form-control-alternative"
                            placeholder="e.g. 12345678"
                            type="text"
                            onChange={(event) => { this.setState({ sensor_id: event.target.value }) }}
                          /> </td>
                        </tr>
                        <tr>
                          <th scope="col">Sensor Station ID</th>
                          <td><Input
                            className="form-control-alternative"
                            placeholder="e.g. 111"
                            type="text"
                            onChange={(event) => { this.setState({ sensor_station_id: event.target.value }) }}
                          /> </td>
                        </tr>
                        <tr>
                          <th scope="col">Location</th>
                          <td>
                            <div className="form-group row">
                              <div className="col-md-6">
                                <Input
                                  className="form-control-alternative"
                                  placeholder="longtitude"
                                  type="text"
                                  onChange={(event) => { this.setState({ longtitude: event.target.value }) }}
                                />
                              </div>

                              <div className="col-md-6">
                                <Input
                                  className="form-control-alternative"
                                  placeholder="latitide"
                                  type="text"
                                  onChange={(event) => { this.setState({ latitude: event.target.value }) }}
                                />
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th scope="col">Installation Time</th>
                          <td>
                            <Input
                              className="form-control-alternative"
                              placeholder="yyyy-mm-dd"
                              type="text"
                              onChange={(event) => { this.setState({ installation_time: event.target.value }) }} /> </td>
                        </tr>
                        <tr>
                          <th scope="col">Status</th>
                          <td><Input
                            className="form-control-alternative"
                            placeholder="status"
                            type="text"
                            onChange={(event) => { this.setState({ status: event.target.value }) }} />
                          </td>
                        </tr>
                      </tbody>
                    </Table>
                  </form>
                </Form>
              </CardBody>

              <CardFooter>
                <Button className="mt-4" color="primary" type="button" onClick={this.addSensor}>
                  UPSERT
                  </Button>
              </CardFooter>
            </Card>
            {/* </Col> */}

            {/** Table */}
            {/* <Row className="mt-5"> */}
            {/* <Col className="mb-5 mb-xl-0" xl="12"> */}
            <Card className="bg-secondary shadow" style={{ height: '18rem' }}>
              <CardHeader className="border-0">
                <Row className="align-items-center">
                  <div className="col">
                    <h3 className="mb-0">Delete Sensor</h3>
                  </div>
                </Row>
              </CardHeader>

              <CardBody >
                <Form>
                  <form onSubmit={this.deleteSensor}>
                    <Table className="align-items-center table-flush" responsive>
                      <tbody>
                        <tr>
                          <th scope="col">Sensor ID</th>
                          <td><Input
                            className="form-control-alternative"
                            placeholder="e.g. 12345678"
                            type="text"
                            onChange={(event) => { this.setState({ sensor_id: event.target.value }) }}
                          /> </td>
                        </tr>
                      </tbody>
                    </Table>
                  </form>
                </Form>
              </CardBody>

              <CardFooter>
                <Button className="mt-4" color="primary" type="button" onClick={this.deleteSensor}>
                  DELETE
              </Button>
              </CardFooter>
            </Card>
            {/* </Row> */}
            {/* </Col> */}

            {/** Table <input placeholder="Sensor Station ID" type ="text" />*/}
            {/* <Col className="mb-5 mb-xl-0" xl="12"> */}
            <Card className="bg-secondary shadow" >
              <CardHeader className="border-0">
                <Row className="align-items-center">
                  <div className="col">
                    <h3 className="mb-0">Sensor Station</h3>
                  </div>
                </Row>
              </CardHeader>

              <CardBody >
                <Form>
                  <form onSubmit={this.addSensorStation}>
                    <Table className="align-items-center table-flush" responsive>
                      <tbody>
                        <tr>
                          <th scope="col">Sensor Station ID</th>
                          <td> <Input
                            className="form-control-alternative"
                            placeholder="e.g. 12345678"
                            type="text"
                            onChange={(event) => { this.setState({ sensor_station_id: event.target.value }) }}
                          />
                          </td>
                        </tr>
                        <tr>
                          <th scope="col">Location</th>
                          <td>
                            <div className="form-group row">
                              <div className="col-md-6">
                                <Input
                                  className="form-control-alternative"
                                  placeholder="longtitude"
                                  type="text"
                                  onChange={(event) => { this.setState({ longtitude: event.target.value }) }}
                                />
                              </div>
                              <div className="col-md-6">
                                <Input
                                  className="form-control-alternative"
                                  placeholder="latitide"
                                  type="text"
                                  onChange={(event) => { this.setState({ latitude: event.target.value }) }}
                                />
                              </div>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </Table>
                  </form>
                </Form>
              </CardBody>

              <CardFooter>
                <Button className="mt-4" color="primary" type="button" onClick={this.addSensorStation}>
                  UPSERT
                  </Button>
              </CardFooter>
            </Card>
            {/* </Col> */}
            {/* </Row> */}


            {/* <Row className="mt-5"> */}
            {/* <Col className="mb-5 mb-xl-0" xl="12"> */}
            <Card className="bg-secondary shadow">
              <CardHeader className="border-0">
                <Row className="align-items-center">
                  <div className="col">
                    <h3 className="mb-0">Delete Sensor Station</h3>
                  </div>
                </Row>
              </CardHeader>

              <CardBody >
                <Form>
                  <form onSubmit={this.deleteSensorStation}>
                    <Table className="align-items-center table-flush" responsive>
                      <tbody>
                        <tr>
                          <th scope="col">Sensor Station ID</th>
                          <td><Input
                            className="form-control-alternative"
                            placeholder="e.g. 12345678"
                            type="text"
                            onChange={(event) => { this.setState({ sensor_station_id: event.target.value }) }}
                          /> </td>
                        </tr>
                      </tbody>
                    </Table>
                  </form>
                </Form>
              </CardBody>

              <CardFooter>
                <Button className="mt-4" color="primary" type="button" onClick={this.deleteSensorStation}>
                  DELETE
                  </Button>
              </CardFooter>
            </Card>

          </Col>
          {/* </Row> */}

        </Container>
      </>
    );
  }
}

export default Tables;