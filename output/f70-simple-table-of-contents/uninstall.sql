-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('f70stoc_setting_on_off', 'f70stoc_setting_including_headers');
DELETE FROM wp_usermeta WHERE meta_key IN ('f70stoc_setting_on_off', 'f70stoc_setting_including_headers');
DELETE FROM wp_termmeta WHERE meta_key IN ('f70stoc_setting_on_off', 'f70stoc_setting_including_headers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('f70stoc_setting_on_off', 'f70stoc_setting_including_headers');

