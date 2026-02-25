-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gutena_forms_grecaptcha', 'gutena_forms_messages', 'gutena_forms_cloudflare_turnstile', 'gutena_form_ids', 'rewrite_rules', 'gutena_forms_version', 'gutena_forms_dismiss_notices', 'gutena_forms_store_version', 'gutena_forms_weekly_report', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_pattern_sync_status', 'gutena_form_id', '_gutena_connected_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_pattern_sync_status', 'gutena_form_id', '_gutena_connected_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_pattern_sync_status', 'gutena_form_id', '_gutena_connected_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_pattern_sync_status', 'gutena_form_id', '_gutena_connected_posts');

