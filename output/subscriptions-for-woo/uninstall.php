<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppsfwoo_db_version');
delete_site_option('ppsfwoo_db_version');
delete_option('ppsfwoo_plans');
delete_site_option('ppsfwoo_plans');
delete_option('ppsfwoo_subscribed_webhooks');
delete_site_option('ppsfwoo_subscribed_webhooks');
delete_option('ppsfwoo_webhook_id');
delete_site_option('ppsfwoo_webhook_id');

// Delete Transients
delete_transient('ppsfwoo_refresh_plans_ran');
delete_site_transient('ppsfwoo_refresh_plans_ran');
delete_transient('ppsfwoo_customer_nonce');
delete_site_transient('ppsfwoo_customer_nonce');
delete_transient('ppsfwoo_ppcp_updated');
delete_site_transient('ppsfwoo_ppcp_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('ppsfwoo_cron_resubscribe_webhooks');

