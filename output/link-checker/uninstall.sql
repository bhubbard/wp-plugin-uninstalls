-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('link-checker-token', 'link-checker-max-fetchers', 'link-checker-login-page-url', 'link-checker-login-form-selector', 'link-checker-login-data');

