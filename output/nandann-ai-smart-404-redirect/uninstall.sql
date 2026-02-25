-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nandann_smart_ai_404_redirect_options', 'nandann_smart_ai_404_last_mail_error', 'nandann_smart_ai_404_quick_stats', 'nandann_smart_ai_404_statistics_today', 'nandann_smart_ai_404_statistics_week', 'nandann_smart_ai_404_statistics_month', 'nandann_smart_ai_404_statistics_all', 'nandann_smart_ai_404_chart_data', 'nandann_smart_ai_404_total_log_count', 'nandann_smart_ai_404_email_stats_daily', 'nandann_smart_ai_404_email_stats_weekly', 'nandann_smart_ai_404_email_stats_monthly');

