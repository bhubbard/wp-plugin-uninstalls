-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kgr-login-with-google-client-id', 'kgr-login-with-google-client-secret', 'kgr-login-with-google-remember');

