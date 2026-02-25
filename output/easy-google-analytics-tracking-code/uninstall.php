<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('analytics_data_code');
delete_site_option('analytics_data_code');
delete_option('analytics_tracking');
delete_site_option('analytics_tracking');
delete_option('analytics_data_admin_traffic');
delete_site_option('analytics_data_admin_traffic');
delete_option('analytics_data_editor_traffic');
delete_site_option('analytics_data_editor_traffic');
delete_option('analytics_data_404_traffic');
delete_site_option('analytics_data_404_traffic');

