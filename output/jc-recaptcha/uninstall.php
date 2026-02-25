<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('public-key');
delete_site_option('public-key');
delete_option('private-key');
delete_site_option('private-key');
delete_option('comment_form');
delete_site_option('comment_form');
delete_option('login_form');
delete_site_option('login_form');
delete_option('register_form');
delete_site_option('register_form');
delete_option('ninja_form');
delete_site_option('ninja_form');
delete_option('cf7_form');
delete_site_option('cf7_form');
delete_option('is_user_logged');
delete_site_option('is_user_logged');

