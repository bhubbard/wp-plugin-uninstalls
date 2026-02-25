<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recaptchalogin_public_key');
delete_site_option('recaptchalogin_public_key');
delete_option('recaptchalogin_private_key');
delete_site_option('recaptchalogin_private_key');
delete_option('recaptchalogin_welcome_heading');
delete_site_option('recaptchalogin_welcome_heading');
delete_option('recaptchalogin_avatar');
delete_site_option('recaptchalogin_avatar');
delete_option('recaptchalogin_logged_in_links');
delete_site_option('recaptchalogin_logged_in_links');
delete_option('recaptchalogin_logout_redirect');
delete_site_option('recaptchalogin_logout_redirect');
delete_option('recaptchalogin_heading');
delete_site_option('recaptchalogin_heading');
delete_option('recaptchalogin_login_redirect');
delete_site_option('recaptchalogin_login_redirect');
delete_option('recaptchalogin_register_link');
delete_site_option('recaptchalogin_register_link');
delete_option('recaptchalogin_forgotton_link');
delete_site_option('recaptchalogin_forgotton_link');
delete_option('recaptchalogin_color');
delete_site_option('recaptchalogin_color');
delete_option('recaptcha_options');
delete_site_option('recaptcha_options');

