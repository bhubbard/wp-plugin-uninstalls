<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_custom_login_logo_fadein');
delete_site_option('wp_custom_login_logo_fadein');
delete_option('wp_custom_login_logo_fadetime');
delete_site_option('wp_custom_login_logo_fadetime');
delete_option('wp_custom_login_logo_url');
delete_site_option('wp_custom_login_logo_url');
delete_option('wp_custom_login_logo_height');
delete_site_option('wp_custom_login_logo_height');
delete_option('wp_custom_login_logo_width');
delete_site_option('wp_custom_login_logo_width');
delete_option('wp_custom_login_url');
delete_site_option('wp_custom_login_url');
delete_option('wp_custom_login_title');
delete_site_option('wp_custom_login_title');
delete_option('wp_custom_login_logo_message');
delete_site_option('wp_custom_login_logo_message');

