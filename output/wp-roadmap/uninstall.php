<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_feedback_roadmap_general_settings');
delete_site_option('wp_feedback_roadmap_general_settings');

// Delete Transients
delete_transient('roadmap_import_success');
delete_site_transient('roadmap_import_success');

// Clear Cron Jobs
wp_clear_scheduled_hook('rmpf_process_scheduled_status_changes');

