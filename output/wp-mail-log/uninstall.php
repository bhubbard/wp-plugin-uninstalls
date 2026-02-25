<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wml_review');
delete_site_option('wml_review');
delete_option('wml_db_version');
delete_site_option('wml_db_version');
delete_option('wpv_wml_settings');
delete_site_option('wpv_wml_settings');

// Delete Transients
delete_transient('wml_remind_later');
delete_site_transient('wml_remind_later');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpv/wml/delete_logs');

