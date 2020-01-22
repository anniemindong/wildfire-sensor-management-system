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
import Index from "views/Index.jsx";
import Profile from "views/examples/Profile.jsx";
import Tables from "views/examples/Tables.jsx";

var routes = [
  {
    path: "/index",
    name: "Dashboard",
    icon: "ni ni-tv-2 text-primary",
    component: Index,
    layout: "/admin"
  },
  {
    path: "/user-profile",
    name: "Search Sensor",
    icon: "ni ni-money-coins text-yellow",
    component: Profile,
    layout: "/admin"
  },
  {
    path: "/tables",
    name: "Sensor Management",
    icon: "ni ni-bullet-list-67 text-red",
    component: Tables,
    layout: "/admin"
  }
];
export default routes;
