-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('olbversion');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_address', 'user_phone', 'user_skype', 'olbgroup', 'olbterm', 'show_admin_bar_front', 'olbprofile');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_address', 'user_phone', 'user_skype', 'olbgroup', 'olbterm', 'show_admin_bar_front', 'olbprofile');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_address', 'user_phone', 'user_skype', 'olbgroup', 'olbterm', 'show_admin_bar_front', 'olbprofile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_address', 'user_phone', 'user_skype', 'olbgroup', 'olbterm', 'show_admin_bar_front', 'olbprofile');

