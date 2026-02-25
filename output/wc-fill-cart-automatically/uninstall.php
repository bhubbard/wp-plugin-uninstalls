<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fwc_settings');
delete_site_option('fwc_settings');
delete_option('fwc_settings_statistics');
delete_site_option('fwc_settings_statistics');
delete_option('fwc_count_times');
delete_site_option('fwc_count_times');
delete_option('fwc_count_users');
delete_site_option('fwc_count_users');

