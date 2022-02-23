<?php
$query = "select * from users";
$result = $cnx->query($query);
$result->execute();
//print "resultat : ".utf8_decode($result[0]['email_user']);
$data = $result->fetchAll();
print $data[0]['nom_user']."<br>";

foreach($result as $data) {
    print "<br />".utf8_decode($data['email_user']);
}
print "<br>branche master";
print "<br>Sur branche nouveau1";