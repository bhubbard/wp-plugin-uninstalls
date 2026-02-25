<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aacb_options');
delete_site_option('aacb_options');
delete_option('aacb_accountID');
delete_site_option('aacb_accountID');
delete_option('aacb_installed');
delete_site_option('aacb_installed');
delete_option('aacb_siteID');
delete_site_option('aacb_siteID');
delete_option('aacb_hide_premium_notice');
delete_site_option('aacb_hide_premium_notice');
delete_option('aacb_version');
delete_site_option('aacb_version');
delete_option('aacb_wizard_completed');
delete_site_option('aacb_wizard_completed');
delete_option('aacb_setup_notice_dismissed');
delete_site_option('aacb_setup_notice_dismissed');
delete_option('aacb_account_tier');
delete_site_option('aacb_account_tier');
delete_option('aacb_engagement_score');
delete_site_option('aacb_engagement_score');
delete_option('aacb_widget_opens_count');
delete_site_option('aacb_widget_opens_count');
delete_option('aacb_days_since_install');
delete_site_option('aacb_days_since_install');
delete_option('aacb_conversion_events');
delete_site_option('aacb_conversion_events');
delete_option('aacb_email_capture_shown');
delete_site_option('aacb_email_capture_shown');
delete_option('aacb_email_capture_count');
delete_site_option('aacb_email_capture_count');

// Delete Transients
delete_transient('aacb_site_options_cache');
delete_site_transient('aacb_site_options_cache');
delete_transient('aacb_validation_cache');
delete_site_transient('aacb_validation_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('aacb_daily_analytics_calculation');

