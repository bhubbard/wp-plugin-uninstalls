-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookiepilot_mode', 'cookiepilot_access_token', 'cookiepilot_refresh_token', 'cookiepilot_domain_id', 'cookiepilot_api_key', 'cookiepilot_agency_token', 'cookiepilot_config_cache');

