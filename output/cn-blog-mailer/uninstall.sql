-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cnbm_version', 'cnbm_activated_time', 'cnbm_db_version', 'cnbm_settings', 'cnbm_weekly_report_settings', 'cnbm_last_newsletter_send', 'cnbm_template_type', 'cnbm_subscriber_keys_migrated', 'cnbm_last_newsletter_send_timestamp', 'cnbm_activation_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cnbm_dismissed_rating_notice', 'cnbm_smtp_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('cnbm_dismissed_rating_notice', 'cnbm_smtp_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('cnbm_dismissed_rating_notice', 'cnbm_smtp_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cnbm_dismissed_rating_notice', 'cnbm_smtp_notice_dismissed');

