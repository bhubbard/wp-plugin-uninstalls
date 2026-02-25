<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advance_login_style');
delete_site_option('advance_login_style');
delete_option('advance_login_style_form');
delete_site_option('advance_login_style_form');
delete_option('advance_login_style_logo');
delete_site_option('advance_login_style_logo');
delete_option('advance_login_style_ms');
delete_site_option('advance_login_style_ms');

