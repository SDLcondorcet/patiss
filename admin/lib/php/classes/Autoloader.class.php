<?php

class Autoloader {

    static function register() {
        spl_autoload_register(array(__CLASS__, 'autoload'));
        //ou 'Autoloader' à la place de __CLASS__
    }

    static function autoload($classname) {
        require $classname . '.class.php';
    }

}
