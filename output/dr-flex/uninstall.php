<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_drflex_cache_db_version');
delete_site_option('wp_drflex_cache_db_version');
delete_option('drflex_api_key');
delete_site_option('drflex_api_key');
delete_option('drflex_connection_status');
delete_site_option('drflex_connection_status');
delete_option('drflex_callback_textarea');
delete_site_option('drflex_callback_textarea');
delete_option('drflex_button_configs');
delete_site_option('drflex_button_configs');

