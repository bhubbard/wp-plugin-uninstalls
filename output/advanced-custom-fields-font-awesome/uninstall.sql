-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ACFFA_current_version', 'acffa_settings', 'ACFFA_theme_install_update_needed', 'ACFFA_cdn_error', 'ACFFA_kits', 'ACFFA_last_api_call_status', 'ACFFA_custom_icon_sets_list', 'ACFFA_latest_version', 'ACFFA_fa_api_key', 'ACFFA_icon_data', 'ACFFA_active_icon_set', 'ACFFA_latest_version_timestamp', 'ACFFA_access_token', 'ACFFA_search_config');

