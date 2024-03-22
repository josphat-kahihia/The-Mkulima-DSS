<?php
/**
 * redirect_user - redirects the user to different web page
 * @location: Holds the page to relocate to
 * @replace: Boolean for replacing header(s) - if true - or not to
 * @http_code: The status code to return to browser
 * 
 * Description: This code moves the user to the homepage immediately,
 * without the user knowing whether they have been shifted or not.
 *
 * Return: User Relocation to the homepage.
 */
function redirect_user()
{
        $location = "Location: ./interface/homepage.html";
        $replace = true;
        $http_code = 302;
        header($location, $replace, $http_code);
        exit();
}
redirect_user();
?>
