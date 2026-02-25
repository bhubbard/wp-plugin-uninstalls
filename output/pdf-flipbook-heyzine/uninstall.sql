-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cl_heyzine_oauth_token', 'cl_heyzine_oauth_email', 'cl_heyzine_oauth_refresh_token', 'cl_heyzine_oauth_token_expires_at');

