<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('securegate_dashboard_notice_dismissed_time');
delete_site_option('securegate_dashboard_notice_dismissed_time');
delete_option('securegate_captcha_settings');
delete_site_option('securegate_captcha_settings');
delete_option('securegate_bypass_start_time');
delete_site_option('securegate_bypass_start_time');
delete_option('securegate_review_notice_dismissed');
delete_site_option('securegate_review_notice_dismissed');
delete_option('secucali_transient_cleanup_done');
delete_site_option('secucali_transient_cleanup_done');
delete_option('securegate_daily_stats');
delete_site_option('securegate_daily_stats');

// Delete Transients
delete_transient('securegate_review_notice_temp_dismissed');
delete_site_transient('securegate_review_notice_temp_dismissed');
delete_transient('securegate_lite_deactivated_notice');
delete_site_transient('securegate_lite_deactivated_notice');
delete_transient('securegate_captcha_logs');
delete_site_transient('securegate_captcha_logs');

// Clear Cron Jobs
wp_clear_scheduled_hook('securegate_daily_analytics_cron');

