<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedreading_blogroll_settings');
delete_site_option('feedreading_blogroll_settings');
delete_option('widget_feedreadingblogroll');
delete_site_option('widget_feedreadingblogroll');
delete_option('update_plugins');
delete_site_option('update_plugins');

