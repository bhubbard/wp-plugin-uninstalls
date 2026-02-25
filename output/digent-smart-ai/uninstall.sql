-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dgnts_settings', 'dgnts_api_key', 'dgnts_system_prompt');

