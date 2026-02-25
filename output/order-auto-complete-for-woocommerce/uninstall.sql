-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woodecor_options1', 'woodecor_options2', 'woodecor_hidenotice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woodecor_login_notice_shown', 'woodecor_show_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('woodecor_login_notice_shown', 'woodecor_show_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('woodecor_login_notice_shown', 'woodecor_show_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woodecor_login_notice_shown', 'woodecor_show_notice');

