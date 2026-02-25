-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bofa_client_id', 'bofa_client_secret', 'bofa_access_token', 'bofa_refresh_token', 'bofa_expire');

