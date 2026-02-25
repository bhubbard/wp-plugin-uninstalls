-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cgarb_enable', 'cgarb_css', 'captcha_garb_install');

