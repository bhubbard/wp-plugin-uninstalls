-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7cstmzr_style_schemes', 'cf7cstmzr_welcome_done', 'cf7cstmzr_enabled_globally', 'cf7cstmzr-load-body-tag', 'cf7cstmzr_style_schemes_preview', 'cf7cstmzr-preview-styled', 'cf7cstmzr-preview-mode', 'cf7cstmzr-split-mode', 'cf7cstmzr_cache_form', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wp2l_license', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7cstmzr_style_scheme', '_hash', 'cf7cstmzr-load-body-tag');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7cstmzr_style_scheme', '_hash', 'cf7cstmzr-load-body-tag');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7cstmzr_style_scheme', '_hash', 'cf7cstmzr-load-body-tag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7cstmzr_style_scheme', '_hash', 'cf7cstmzr-load-body-tag');

