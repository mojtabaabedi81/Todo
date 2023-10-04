<?php

function login()
{
    if (post('loginRequest')) {
        if (user_exists(post('email'))) {
            $login = user_login(post('email'), post('password'));
            if ($login) {

                view("todo_list");
            } else {
                echo "user or password wronge !";
            }
        } else {
            echo "user not found !";
            view("login&register");

        }

    } else
        view("login&register");
}

function register()
{

    if (null !== (post('registerRequest'))) {


    }
    view("login&register");
}