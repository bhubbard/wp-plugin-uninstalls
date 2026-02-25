<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nandann_smart_ai_404_redirect_options');
delete_site_option('nandann_smart_ai_404_redirect_options');

// Delete Transients
delete_transient('nandann_smart_ai_404_last_mail_error');
delete_site_transient('nandann_smart_ai_404_last_mail_error');
delete_transient('nandann_smart_ai_404_quick_stats');
delete_site_transient('nandann_smart_ai_404_quick_stats');
delete_transient('nandann_smart_ai_404_statistics_today');
delete_site_transient('nandann_smart_ai_404_statistics_today');
delete_transient('nandann_smart_ai_404_statistics_week');
delete_site_transient('nandann_smart_ai_404_statistics_week');
delete_transient('nandann_smart_ai_404_statistics_month');
delete_site_transient('nandann_smart_ai_404_statistics_month');
delete_transient('nandann_smart_ai_404_statistics_all');
delete_site_transient('nandann_smart_ai_404_statistics_all');
delete_transient('nandann_smart_ai_404_chart_data');
delete_site_transient('nandann_smart_ai_404_chart_data');
delete_transient('nandann_smart_ai_404_total_log_count');
delete_site_transient('nandann_smart_ai_404_total_log_count');
delete_transient('nandann_smart_ai_404_email_stats_daily');
delete_site_transient('nandann_smart_ai_404_email_stats_daily');
delete_transient('nandann_smart_ai_404_email_stats_weekly');
delete_site_transient('nandann_smart_ai_404_email_stats_weekly');
delete_transient('nandann_smart_ai_404_email_stats_monthly');
delete_site_transient('nandann_smart_ai_404_email_stats_monthly');

// Clear Cron Jobs
wp_clear_scheduled_hook('nandann_smart_ai_404_send_email_report_daily');
wp_clear_scheduled_hook('nandann_smart_ai_404_send_email_report_weekly');
wp_clear_scheduled_hook('nandann_smart_ai_404_send_email_report_monthly');
wp_clear_scheduled_hook('nandann_smart_ai_404_cleanup_old_logs');

