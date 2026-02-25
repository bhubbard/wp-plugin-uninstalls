<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajdg_spamblocker_domains');
delete_site_option('ajdg_spamblocker_domains');
delete_option('ajdg_activate_analytics-spam-blocker');
delete_site_option('ajdg_activate_analytics-spam-blocker');
delete_option('ajdg_spamblocker_hide_birthday');
delete_site_option('ajdg_spamblocker_hide_birthday');
delete_option('ajdg_spamblocker_hide_review');
delete_site_option('ajdg_spamblocker_hide_review');
delete_option('ajdg_spamblocker_updates');
delete_site_option('ajdg_spamblocker_updates');
delete_option('ajdg_spamblocker_user');
delete_site_option('ajdg_spamblocker_user');
delete_option('ajdg_spamblocker_stats');
delete_site_option('ajdg_spamblocker_stats');
delete_option('ajdg_spamblocker_error');
delete_site_option('ajdg_spamblocker_error');
delete_option('ajdg_spamblocker_subscription');
delete_site_option('ajdg_spamblocker_subscription');
delete_option('ajdg_spamblocker_reports');
delete_site_option('ajdg_spamblocker_reports');
delete_option('ajdg_spamblocker_hide_register');
delete_site_option('ajdg_spamblocker_hide_register');
delete_option('ajdg_spamblocker_version');
delete_site_option('ajdg_spamblocker_version');

// Delete Transients
delete_transient('ajdg_update_analytics-spam-blocker');
delete_site_transient('ajdg_update_analytics-spam-blocker');

// Clear Cron Jobs
wp_clear_scheduled_hook('spamblocker_get_spam_domains');
wp_clear_scheduled_hook('ajdg_api_stats_update');

