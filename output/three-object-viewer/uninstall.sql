-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('3ov_ai_enabled', '3ov_mp_networkWorker', '3ov_ai_openApiKey', '3ov_ai_allow', '3ov_defaultVRM', '3ov_defaultAvatar', '3ov_plugin_version');

