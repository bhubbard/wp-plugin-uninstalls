<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_smtp_options');
delete_site_option('custom_smtp_options');
delete_option('custom_smtp_version');
delete_site_option('custom_smtp_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('custom_smtp_purge_logs');

