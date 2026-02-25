<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ncloud_mailer_settings');
delete_site_option('ncloud_mailer_settings');

// Delete Transients
delete_transient('ncloud_mailer_logs');
delete_site_transient('ncloud_mailer_logs');

// Clear Cron Jobs
wp_clear_scheduled_hook('ncloud_mailer_cleanup');

