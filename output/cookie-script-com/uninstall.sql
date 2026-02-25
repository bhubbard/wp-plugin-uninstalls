-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookie_script_item_src', 'cookie_script_location', 'cookie_script_location_in_element', 'cookie_script_with_plan_script_added', 'cookie_script_google_consent_mode_enabled', 'cookie_script_with_plan_timestamp', 'cookie_script_google_consent_mode_settings', 'cookie_script_without_plan_script_added', 'cookie_script_redirect_location', 'cookie_script_without_plan_cookies', 'cookie_script_secret', 'cookie_script_without_plan_privacy_policy_url', 'cookie_script_without_banner_language', 'cookie_script_item_id', 'cookie_script_item_connection_type', 'cookie_script_current_plugin_version', 'banner-added-flash');

