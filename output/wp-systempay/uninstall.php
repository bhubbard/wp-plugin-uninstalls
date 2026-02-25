<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_systempay_db_version');
delete_site_option('wp_systempay_db_version');
delete_option('WS_main_page');
delete_site_option('WS_main_page');
delete_option('wp_systempay_installed');
delete_site_option('wp_systempay_installed');

