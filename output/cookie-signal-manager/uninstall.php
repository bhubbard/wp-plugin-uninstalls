<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('coksima_settings');
delete_site_option('coksima_settings');
delete_option('coksima_secret_key');
delete_site_option('coksima_secret_key');
delete_option('coksima_secret_iv');
delete_site_option('coksima_secret_iv');

// Clear Cron Jobs
wp_clear_scheduled_hook('coksima_cleanup');

