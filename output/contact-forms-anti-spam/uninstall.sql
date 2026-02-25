-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maspik_run_once', 'spamcounter', 'maspik_matrix_auto_enabled', 'maspik_columns_last_check', 'maspik_db_version', 'maspik_dlm_license', 'errorlog', 'spamapi', 'shere_data', 'maspik_api_requests', 'maspik_recent_ip_checks', 'maspik_api_id', 'maspik_spam_key', 'maspik_blacklist_merged', 'maspik_blacklist_merge_notice', 'maspik_matrix_enabled_notice', 'maspik_matrix_enabled_notice_dismissed', 'maspik_matrix_widget_hidden', 'maspik_licensing_version', 'contact-forms-anti-spam-license-data', 'maspik_monthly_stats', 'Mapik_dismissed_shereing_notice', 'maspik_version_info', 'maspik_blacklist_merge_notice_dismissed');
DELETE FROM wp_options WHERE option_name LIKE '%flash';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('maspik_whats_new_seen_version', 'maspik_pointer_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('maspik_whats_new_seen_version', 'maspik_pointer_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('maspik_whats_new_seen_version', 'maspik_pointer_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('maspik_whats_new_seen_version', 'maspik_pointer_dismissed');

