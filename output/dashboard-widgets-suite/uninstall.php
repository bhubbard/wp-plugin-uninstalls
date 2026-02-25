<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dws_options_feed_box');
delete_site_option('dws_options_feed_box');
delete_option('dws_options_notes_user');
delete_site_option('dws_options_notes_user');
delete_option('dws_options_social_box');
delete_site_option('dws_options_social_box');
delete_option('dws_options_general');
delete_site_option('dws_options_general');
delete_option('dws_options_list_box');
delete_site_option('dws_options_list_box');
delete_option('dws_options_log_debug');
delete_site_option('dws_options_log_debug');
delete_option('dws_options_log_error');
delete_site_option('dws_options_log_error');
delete_option('dws_options_system_info');
delete_site_option('dws_options_system_info');
delete_option('dws_options_widget_box');
delete_site_option('dws_options_widget_box');
delete_option('dws_notes_user_data');
delete_site_option('dws_notes_user_data');
delete_option('dashboard-widgets-suite-dismiss-notice');
delete_site_option('dashboard-widgets-suite-dismiss-notice');

