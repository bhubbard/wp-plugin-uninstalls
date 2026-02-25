<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('live_2d_settings_user_token');
delete_site_option('live_2d_settings_user_token');
delete_option('live_2d_settings_option_name');
delete_site_option('live_2d_settings_option_name');
delete_option('live_2d_advanced_option_name');
delete_site_option('live_2d_advanced_option_name');

