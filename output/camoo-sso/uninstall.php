<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_camoo_sso_options');
delete_site_option('wp_camoo_sso_options');
delete_option('wp_camoo_sso_db_version');
delete_site_option('wp_camoo_sso_db_version');

