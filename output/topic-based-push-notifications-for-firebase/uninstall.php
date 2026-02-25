<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tbpn_settings_v1');
delete_site_option('tbpn_settings_v1');

// Delete Transients
delete_transient('tbpn_test_results');
delete_site_transient('tbpn_test_results');
delete_transient('tbpn_activation_notice');
delete_site_transient('tbpn_activation_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('tbpn_cleanup_old_notifications');

