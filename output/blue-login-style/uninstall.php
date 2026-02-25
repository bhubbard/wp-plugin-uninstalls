<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blue_upload_logo');
delete_site_option('blue_upload_logo');
delete_option('blue_custom_style');
delete_site_option('blue_custom_style');
delete_option('blue_upload_background');
delete_site_option('blue_upload_background');
delete_option('blue_upload_repeat');
delete_site_option('blue_upload_repeat');
delete_option('blue_upload_position');
delete_site_option('blue_upload_position');
delete_option('blue_login_redirect');
delete_site_option('blue_login_redirect');
delete_option('blue_logout_redirect');
delete_site_option('blue_logout_redirect');
delete_option('blue_register_redirect');
delete_site_option('blue_register_redirect');
delete_option('blue_login_message');
delete_site_option('blue_login_message');
delete_option('blue_default_theme');
delete_site_option('blue_default_theme');

