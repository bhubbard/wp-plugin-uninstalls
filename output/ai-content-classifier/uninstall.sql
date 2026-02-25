-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aicg_admin_notices', 'aicg_model', 'aicg_temperature', 'aicg_max_tokens', 'aicg_api_key', 'aicg_default_language', 'aicg_cache_expiry', 'aicg_api_keys', 'aicg_api_key_encrypted', 'aicg_encryption_key', 'aicg_plugin_version', 'aicg_activation_date', 'aicg_usage_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aicg_dismissed_notices', 'aicg_quick_results', 'aicg_meta_description', 'aicg_keywords', 'aicg_generated', 'aicg_generated_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('aicg_dismissed_notices', 'aicg_quick_results', 'aicg_meta_description', 'aicg_keywords', 'aicg_generated', 'aicg_generated_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('aicg_dismissed_notices', 'aicg_quick_results', 'aicg_meta_description', 'aicg_keywords', 'aicg_generated', 'aicg_generated_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aicg_dismissed_notices', 'aicg_quick_results', 'aicg_meta_description', 'aicg_keywords', 'aicg_generated', 'aicg_generated_date');

