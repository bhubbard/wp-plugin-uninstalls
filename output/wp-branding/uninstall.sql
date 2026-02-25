-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmbtb_developer', 'wpmbtb_developer_website', 'wpmbtb_logo', 'wpmbtb_customversion');

