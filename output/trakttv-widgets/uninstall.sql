-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ljpl-trakttv-use-css', 'ljpl-trakttv-has-private-account', 'ljpl-trakttv-login', 'ljpl-trakttv-password', 'ljpl-trakttv-api-key');

