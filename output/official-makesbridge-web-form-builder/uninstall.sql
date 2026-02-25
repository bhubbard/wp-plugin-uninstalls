-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmks_webforms_userinfo', 'wpmks_webforms_usercounter');

