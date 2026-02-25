<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tickzo_options');
delete_site_option('tickzo_options');
delete_option('tickzo_default_categories_inserted');
delete_site_option('tickzo_default_categories_inserted');
delete_option('tickzo_pro_migration_version');
delete_site_option('tickzo_pro_migration_version');
delete_option('tickzo_ticket_schema_version');
delete_site_option('tickzo_ticket_schema_version');
delete_option('tickzo_ticket_numbers_backfilled');
delete_site_option('tickzo_ticket_numbers_backfilled');
delete_option('tickzo_settings');
delete_site_option('tickzo_settings');
delete_option('tickzo_version');
delete_site_option('tickzo_version');

// Delete Transients
delete_transient('tickzo_category_db_error');
delete_site_transient('tickzo_category_db_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('tickzo_auto_close_tickets');

