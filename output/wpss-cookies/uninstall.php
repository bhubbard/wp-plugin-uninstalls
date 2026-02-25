<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('wpss_cookie_message');
delete_site_option('wpss_cookie_message');
delete_option('wpss_show_cookie_message');
delete_site_option('wpss_show_cookie_message');
delete_option('wpss_message_position');
delete_site_option('wpss_message_position');
delete_option('wpss_message_style');
delete_site_option('wpss_message_style');
delete_option('wpss_button_text');
delete_site_option('wpss_button_text');
delete_option('wpss_cookie_name');
delete_site_option('wpss_cookie_name');
delete_option('wpss_cookie_life');
delete_site_option('wpss_cookie_life');

