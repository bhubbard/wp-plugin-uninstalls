<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('conflict_finder_email_test_status');
delete_site_option('conflict_finder_email_test_status');
delete_option('conflict_finder_plugins_temporarily_deactivated');
delete_site_option('conflict_finder_plugins_temporarily_deactivated');
delete_option('conflict_finder_theme_temporarily_switched');
delete_site_option('conflict_finder_theme_temporarily_switched');
delete_option('conflict_finder_saved_active_theme');
delete_site_option('conflict_finder_saved_active_theme');
delete_option('conflict_finder_saved_active_plugins');
delete_site_option('conflict_finder_saved_active_plugins');

