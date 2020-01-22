import Index from "views/Index.jsx";
import Profile from "views/examples/Profile.jsx";

var userRoutes = [
    {
      path: "/index",
      name: "Dashboard",
      icon: "ni ni-tv-2 text-primary",
      component: Index,
      layout: "/user"
    },
    {
      path: "/user-profile",
      name: "Search Sensor",
      icon: "ni ni-money-coins text-yellow",
      component: Profile,
      layout: "/user"
    }
  ];
  export default userRoutes;