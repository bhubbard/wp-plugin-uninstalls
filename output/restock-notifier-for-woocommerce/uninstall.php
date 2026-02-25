<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('restocknotifierpcprajapat_settings');
delete_site_option('restocknotifierpcprajapat_settings');
delete_option('restocknotifierpcprajapat_activation_check');
delete_site_option('restocknotifierpcprajapat_activation_check');
delete_option('restocknotifierpcprajapat_setup_defaults');
delete_site_option('restocknotifierpcprajapat_setup_defaults');

// Delete Transients
delete_transient('restocknotifierpcprajapat_wc_missing_notice');
delete_site_transient('restocknotifierpcprajapat_wc_missing_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('restocknotifierpcprajapat_cron_send_batch');

