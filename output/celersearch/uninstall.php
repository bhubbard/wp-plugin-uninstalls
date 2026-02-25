<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('celersearch_settings');
delete_site_option('celersearch_settings');
delete_option('celersearch_db_version');
delete_site_option('celersearch_db_version');
delete_option('woocommerce_catalog_rows');
delete_site_option('woocommerce_catalog_rows');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('celersearch_service_check');

