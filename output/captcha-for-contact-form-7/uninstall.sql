-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('f12_cf7_captcha_installed_at', 'f12_cf7_captcha_installation_uuid', 'f12_cf7_captcha_telemetry_counters', 'f12-cf7-captcha-settings', 'disallowed_keys', 'f12_cf7_captcha_review_dismissed', 'f12_cf7_captcha_review_remind_later', 'f12_cf7_captcha_review_remind_count', 'f12_cf7_ip_ban_enabled', 'f12-cf7-captcha_version', 'f12_captcha_settings', 'f12-cf7-captcha-settings-backup', 'f12-cf7-captcha-form-overrides');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'fusion_builder_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'fusion_builder_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'fusion_builder_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'fusion_builder_status');

