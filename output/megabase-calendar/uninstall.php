<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('megacal_options');
delete_site_option('megacal_options');
delete_option('megacal_hidden_options');
delete_site_option('megacal_hidden_options');
delete_option('megacal_execution_id_store');
delete_site_option('megacal_execution_id_store');
delete_option('megacal_processing_errors');
delete_site_option('megacal_processing_errors');

// Delete Transients
delete_transient('megacal_do_rewrite_flush');
delete_site_transient('megacal_do_rewrite_flush');

// Clear Cron Jobs
wp_clear_scheduled_hook('megacal_check_event_processing_cron');
wp_clear_scheduled_hook('megacal_clear_debug_log_cron');

