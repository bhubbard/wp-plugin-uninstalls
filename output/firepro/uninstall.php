<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('firepro_api_key');
delete_site_option('firepro_api_key');
delete_option('firepro_temp_key');
delete_site_option('firepro_temp_key');
delete_option('firepro_pro_status');
delete_site_option('firepro_pro_status');
delete_option('firepro_api_settings');
delete_site_option('firepro_api_settings');

