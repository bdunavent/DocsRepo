<?php
include '../Lib/Session.php';
Session::validateSession();
include ('../templates/header.php');

if (Users::isAuthorized() == TRUE)
 {
    
     print '<p>Use the links above to navigate through the site!</p>';
}
 else
 {
     print '<p>Your account will be verified within 24-48 hours!  <br /><br />Please contact the site administrator to light a fire in his ass and get it done sooner.</p>';
}
include ('../templates/footer.html');
?>