-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('samohyb_ga_api_url', 'samohyb_ga_access_token', 'samohyb_ga_refresh_token', 'samohyb_ga_token', 'samohyb_ga_access_response', 'samohyb_ga_access_whitelist');

