-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghostgate_json_allowed_routes', 'ghostgate_json_allowed_prefixes', 'ghostgate_hide_json_endpoints', 'ghostgate_login_slug', 'ghostgate_enable_login_slug', 'ghostgate_code_length', 'ghostgate_enable_code_length', 'ghostgate_code_mode', 'ghostgate_enable_code_mode', 'ghostgate_custom_code', 'ghostgate_enable_2fa', 'ghostgate_ajax_limit', 'ghostgate_ajax_cooldown', 'ghostgate_enable_ajax_limit', 'ghostgate_ajax_notify', 'ghostgate_log_file_path', 'ghostgate_enable_log_file', 'ghostgate_log_retention_days', 'ghostgate_enable_login_limit', 'ghostgate_login_attempt_limit', 'ghostgate_notify_on_block', 'ghostgate_login_block_cooldown', 'ghostgate_block_author_enum', 'ghostgate_disable_xmlrpc', 'ghostgate_block_unused_rest', 'ghostgate_enable_rest_limit', 'ghostgate_rest_limit_count', 'ghostgate_rest_limit_cooldown', 'ghostgate_enable_session_control', 'ghostgate_session_timeout', 'ghostgate_block_preview', 'ghostgate_block_index', 'ghostgate_session_grace_until', 'ghostgate_session_interval');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_2fa_enabled', 'mo_2fa_status', 'wfls_twoFactorStatus', 'ghostgate_2fa_enabled', 'ghostgate_enable_2fa', 'ghostgate_2fa_verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_2fa_enabled', 'mo_2fa_status', 'wfls_twoFactorStatus', 'ghostgate_2fa_enabled', 'ghostgate_enable_2fa', 'ghostgate_2fa_verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_2fa_enabled', 'mo_2fa_status', 'wfls_twoFactorStatus', 'ghostgate_2fa_enabled', 'ghostgate_enable_2fa', 'ghostgate_2fa_verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_2fa_enabled', 'mo_2fa_status', 'wfls_twoFactorStatus', 'ghostgate_2fa_enabled', 'ghostgate_enable_2fa', 'ghostgate_2fa_verified');

