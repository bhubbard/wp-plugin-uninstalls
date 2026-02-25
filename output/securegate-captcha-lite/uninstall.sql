-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('securegate_dashboard_notice_dismissed_time', 'securegate_captcha_settings', 'securegate_bypass_start_time', 'securegate_review_notice_dismissed', 'secucali_transient_cleanup_done', 'securegate_daily_stats', 'securegate_review_notice_temp_dismissed', 'securegate_lite_deactivated_notice', 'securegate_captcha_logs');

