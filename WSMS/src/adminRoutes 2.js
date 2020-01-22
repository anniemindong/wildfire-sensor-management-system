import Index from "views/Index.jsx";
import Profile from "views/examples/Profile.jsx";

var userRoutes = [
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
  export default userRoutes;