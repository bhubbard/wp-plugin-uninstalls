<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gozer_settings');
delete_site_option('gozer_settings');
delete_option('gozer_bypass_tokens');
delete_site_option('gozer_bypass_tokens');

// Delete Transients
delete_transient('gozer_activation_notice');
delete_site_transient('gozer_activation_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('gozer_cleanup_tokens');

