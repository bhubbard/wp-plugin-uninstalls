-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formrank_enrichment_notice_pending', 'formrank_enrichment_notice_dismissed', 'formrank_license_activated', 'formrank_import_log', 'formrank_settings', 'formrank_onboarding_status', 'formrank_ls_db_version', 'formrank_usage_stats', 'formrank_ai_usage', 'formrank_previous_plan_status', 'formrank_license_key', 'formrank_feedback_log', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'formrank_usage_stats', 'formrank_enrich_stats', 'formrank_ls_activated', 'formrank_ls_setup_redirect', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'formrank_enrich_cooldown_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_field_post_id', '_meta_referer', '_meta_remote_ip', '_meta_user_agent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_field_post_id', '_meta_referer', '_meta_remote_ip', '_meta_user_agent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_field_post_id', '_meta_referer', '_meta_remote_ip', '_meta_user_agent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_field_post_id', '_meta_referer', '_meta_remote_ip', '_meta_user_agent');

