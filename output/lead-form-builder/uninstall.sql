-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('captcha-setting-sitekey', 'captcha-setting-secret', 'lf-remember-me-show-lead');

