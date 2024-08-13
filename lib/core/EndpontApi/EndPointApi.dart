String Host = "ac30-197-63-24-111.ngrok-free.app";

//https://afd8-197-63-24-111.ngrok-free.app/
class Endpointapi {
  String SingUpEndPoint = "https://${Host}/api/accounts/signup";
  String SinginEndPoint = "https://${Host}/api/accounts/signin";

  String Sinout = "https://${Host}/api/accounts/signout";

  String Forgotpassword = 'https://${Host}/api/accounts/forgot-password';
  String restpassword = 'https://${Host}/api/accounts/reset-password';
  //<YOUR-HOST>/api/accounts/signout
  String SingOut = 'https://${Host}/api/accounts/signout';
  String Get_All_Categories = 'https://${Host}/api/categories';
}
//https://afd8-197-63-24-111.ngrok-free.app/api/categories