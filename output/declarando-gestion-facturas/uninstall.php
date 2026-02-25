<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('declarando_options');
delete_site_option('declarando_options');
delete_option('declarando_gestion_facturas_options');
delete_site_option('declarando_gestion_facturas_options');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('declarando_gestion_facturas_update_data');
delete_site_transient('declarando_gestion_facturas_update_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('declarando_sync_orders');
wp_clear_scheduled_hook('declarando_cleanup_logs');
wp_clear_scheduled_hook('declarando_check_updates');

