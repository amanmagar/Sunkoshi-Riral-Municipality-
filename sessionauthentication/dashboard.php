<?php
session_start();
if (isset($_SESSION['Name'])) {
    echo "<h1>This is a dashbard</h1>";
    echo "<h2>This is only visible to the authentic users only</h2>";
    echo "<h3>Welcome, $_SESSION[Name] </h3>";
?>
<a href="../create.php">Add new users</a>
<br>
<hr>
<a href="../list.php">Table</a>
<br>
<hr>
<a href="../edit.php">Update New Users<s/a>
<br>
<hr>
<?php
}
else {
    echo "<h1>Unauthorized Access |||</h1>";
    header("Location: login.php");
}
?>
<a href="logout.php">logout</a>