-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saveamsu_saved_page_id', 'ss_saved_page_id', 'ss_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_saveamsu_enable_save', '_ss_enable_save');
DELETE FROM wp_usermeta WHERE meta_key IN ('_saveamsu_enable_save', '_ss_enable_save');
DELETE FROM wp_termmeta WHERE meta_key IN ('_saveamsu_enable_save', '_ss_enable_save');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_saveamsu_enable_save', '_ss_enable_save');

