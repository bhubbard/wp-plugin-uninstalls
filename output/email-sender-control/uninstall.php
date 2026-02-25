<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('md_esc_settings');
delete_site_option('md_esc_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('md_esc_clean_logs');

