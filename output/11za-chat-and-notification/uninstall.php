<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcf_ca_gdpr_message');
delete_site_option('wcf_ca_gdpr_message');

// Clear Cron Jobs
wp_clear_scheduled_hook('engees_11za_cartflow_ca_update_order_status_action');

