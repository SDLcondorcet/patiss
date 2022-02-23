<?php
class Connexion {
    private static $_instance = null;

    public static function getInstance($dsn, $user, $password){
        if(!self::$_instance){
            try{
                self::$_instance = new PDO($dsn, $user, $password);
                print "<br>Connecté";
            }catch(PDOException $e){
                print "<br>Connexion impossible ".$e->getMessage();
                print "<br>".$e->getLine();
                print "<br>".$e->getTrace();
            }
        }
        return self::$_instance;
    }
}