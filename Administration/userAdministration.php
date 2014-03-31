<?php
include '../Lib/Session.php';
Session::validateSession();
include ('../templates/header.php');
?>

<h2>User Administration</h2>
<p>
	Below is a list of Users in the Database.
</p>
<br />

<?php
include ('../templates/footer.html');
?>