<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spoki_ca_gdpr_message');
delete_site_option('spoki_ca_gdpr_message');
delete_option('spoki_activation_redirect');
delete_site_option('spoki_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('spoki_abandoned_carts_cron_hook');
wp_clear_scheduled_hook('spoki_cron_hook');

