-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookiefy_consent_logs', 'cookiefy_domain_id', 'cookiefy_ui_theme', 'cookiefy_core_mode', 'cookiefy_enabled', 'cookiefy_custom_config');

