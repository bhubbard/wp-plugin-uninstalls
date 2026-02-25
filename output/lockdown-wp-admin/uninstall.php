<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ld_http_auth');
delete_site_option('ld_http_auth');
delete_option('ld_hide_wp_admin');
delete_site_option('ld_hide_wp_admin');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ld_login_base');
delete_site_option('ld_login_base');
delete_option('ld_private_users');
delete_site_option('ld_private_users');

