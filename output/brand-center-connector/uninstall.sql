-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brandcenter_error_auth', 'brandcenter_url', 'brandcenter_user', 'brandcenter_pwd', 'authData');

