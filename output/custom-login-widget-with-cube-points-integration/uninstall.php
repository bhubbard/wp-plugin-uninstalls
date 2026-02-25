<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customlogin_heading');
delete_site_option('customlogin_heading');
delete_option('customlogin_register_link');
delete_site_option('customlogin_register_link');
delete_option('customlogin_forgotton_link');
delete_site_option('customlogin_forgotton_link');
delete_option('customlogin_welcome_heading');
delete_site_option('customlogin_welcome_heading');
delete_option('customlogin_avatar');
delete_site_option('customlogin_avatar');
delete_option('customlogin_logged_in_links');
delete_site_option('customlogin_logged_in_links');
delete_option('customlogin_cubepoints');
delete_site_option('customlogin_cubepoints');
delete_option('customlogin_cubepoints_text');
delete_site_option('customlogin_cubepoints_text');

