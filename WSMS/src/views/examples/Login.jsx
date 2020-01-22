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
import UserProfile from 'userProfile';
import {reactLocalStorage} from 'reactjs-localstorage';

// reactstrap components
import {
  Button,
  Card,
  CardBody,
  CardHeader,
  FormGroup,
  Form,
  Input,
  InputGroupAddon,
  InputGroupText,
  InputGroup,
  Row,
  Col
} from "reactstrap";

class Login extends React.Component {
  state = {
    email: "",
    password: "",
    status: "",
    isAdmin: false,
  }

  getData = (event) => {
    const {email, password, isAdmin} = this.state
    console.log(email)
    console.log(password)
    console.log(isAdmin)
    fetch(`http://localhost:4000/login?email=${email}&pwd=${password}&admin=${isAdmin}`)
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
  }

  handlePasswordChange = (event) =>  {
    this.setState({password: event.target.value});
  }

  handleAdminChange= ()  => {
    this.setState({isAdmin: !this.state.isAdmin});
  }

  renderRedirect = () => {
    if (this.state.status === "Successfully login.") {
      UserProfile.setName(this.state.email);
      reactLocalStorage.set('user_id', this.state.email);
      let isAdmin = this.state.isAdmin
      console.log("isAdmin is "+ this.state.isAdmin)
      if(isAdmin){
        console.log("True isAdmin is "+ this.state.isAdmin)
        console.log("I am admin, you will be redirected to /admin/index")
        return <Redirect to='/admin/index' />
      }
      if(!isAdmin){
        console.log("False isAdmin is "+ this.state.isAdmin)
        console.log("I am user, you will be redirected to /user/index")
        return <Redirect to='/user/index' />
      }
      
    }
  }

  render() {
    return (
      <>
        {this.renderRedirect()}
        <Col lg="5" md="7">
          <Card className="bg-secondary shadow border-0">
            <CardHeader>             
              Sign In 
            </CardHeader>
            <CardBody className="px-lg-5 py-lg-5">
              <Form role="form" onSubmit={this.getData}>
                <small>{this.state.status}</small>
                <FormGroup className="mb-3">
                  <InputGroup className="input-group-alternative">
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
                <div className="custom-control custom-control-alternative custom-checkbox">
                  <input
                    className="custom-control-input"
                    id=" customCheckLogin"
                    type="checkbox"
                    onClick={this.handleAdminChange}
                  />
                  <label
                    className="custom-control-label"
                    htmlFor=" customCheckLogin"
                  >
                    <span className="text-muted">Admin</span>
                  </label>
                </div>
                <div className="text-center">
                  <Button className="my-4" color="primary" type="submit">
                    Sign in
                  </Button>
                  <br />
                  <small> <Link to="/auth/register">Create new account</Link></small>
                </div>
              </Form>
              <Row className="mt-3">
            
          </Row>
            </CardBody>
          </Card>
        </Col>
      </>
    );
  }
}

export default Login;
