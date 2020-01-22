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
import { Redirect } from 'react-router-dom';
import { Link } from 'react-router-dom';

// reactstrap components
import {
  Button,
  Card,
  CardHeader,
  CardBody,
  FormGroup,
  Form,
  Input,
  InputGroupAddon,
  InputGroupText,
  InputGroup,
  Row,
  Col
} from "reactstrap";

class Register extends React.Component {
  state = {
    email: "",
    password: "",
    status: "",
    isAdmin: false
  }

  getData = (event) => {
    const {email, password, isAdmin} = this.state
    // console.log("I am here to post Data")
    console.log(email)
    fetch(`http://localhost:4000/register?email=${email}&pwd=${password}&admin=${isAdmin}`)
    .then(response => response.json())
    .then(data => {
      this.setState({status: data["response"]})
      console.log(this.state.status)
    })
    .catch(err => console.log(err))
    event.preventDefault();
  }

  handleEmailChange = (event) =>  {
    this.setState({email: event.target.value});
    console.log(this.state.email)
  }

  handlePasswordChange = (event) =>  {
    this.setState({password: event.target.value});
    console.log(this.state.password)
  }

  handleAdminChange= (event) => {
    console.log(event.target.checked)
    this.setState({isAdmin: event.target.checked});
  }

  renderRedirect = () => {
    if (this.state.status === "Successfully register.") {
      return <Redirect to='/auth/login' />
    }
  }


  render() {
    return (
      <>
        {this.renderRedirect()}
        <Col lg="6" md="8">
          <Card className="bg-secondary shadow border-0">
            <CardHeader>             
              Sign Up 
            </CardHeader>
            <CardBody className="px-lg-5 py-lg-5">
              <Form role="form" onSubmit={this.getData}>
                <small>{this.state.status}</small>
                <FormGroup>
                  <InputGroup className="input-group-alternative mb-3">
                    <InputGroupAddon addonType="prepend">
                      <InputGroupText>
                        <i className="ni ni-email-83" />
                      </InputGroupText>
                    </InputGroupAddon>
                    <Input placeholder="Email" type="email" onChange={this.handleEmailChange} required/>
                  </InputGroup>
                </FormGroup>
                <FormGroup>
                  <InputGroup className="input-group-alternative">
                    <InputGroupAddon addonType="prepend">
                      <InputGroupText>
                        <i className="ni ni-lock-circle-open" />
                      </InputGroupText>
                    </InputGroupAddon>
                    <Input placeholder="Password" type="password" onChange={this.handlePasswordChange} required/>
                  </InputGroup>
                </FormGroup>
                <Row className="my-4">
                  <Col xs="12">
                    <div className="custom-control custom-control-alternative custom-checkbox">
                      <input
                        className="custom-control-input"
                        id="customCheckRegister"
                        type="checkbox"
                        onClick={this.handleAdminChange}
                      />
                      <label
                        className="custom-control-label"
                        htmlFor="customCheckRegister"
                      >
                        <span className="text-muted">
                          Sign up as Admin
                        </span>
                      </label>
                    </div>
                  </Col>
                </Row>
                <div className="text-center">
                  <Button className="mt-4" color="primary" type="submit">
                    Create account
                  </Button>
                  <br />
                  <small> <Link to="/auth/login">Sign In</Link></small>
                </div>
              </Form>
            </CardBody>
          </Card>
        </Col>
      </>
    );
  }
}

export default Register;
