-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwp_activation_run', 'pocket_wp_settings', 'pwp_settings', 'pwp_request_token', 'pwp_access_token', 'pwp_oauth_request');

