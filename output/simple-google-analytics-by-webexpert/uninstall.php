<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('we_we_google_analytics_pro_general_settings_name');
delete_site_option('we_we_google_analytics_pro_general_settings_name');
delete_option('we_we_google_analytics_pro_gacode_settings_name');
delete_site_option('we_we_google_analytics_pro_gacode_settings_name');

