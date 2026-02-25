-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unity_birthday_setting', 'default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('unity-birth-date');
DELETE FROM wp_usermeta WHERE meta_key IN ('unity-birth-date');
DELETE FROM wp_termmeta WHERE meta_key IN ('unity-birth-date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('unity-birth-date');

