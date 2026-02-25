-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maps_google_api_key', 'edbs_next_options', 'edbs_next_options_templates', 'edbs_next_options_currentTemplate', 'edoobox_cache_time_in_s', 'edbs_edid', 'edbs_token', 'edbs_token_expires_at');
DELETE FROM wp_options WHERE option_name LIKE 'edoobox_cache_%';

