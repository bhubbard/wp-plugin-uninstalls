-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ypl_redirect', 'ypl-delete-data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('YPL_SAVED_SETTINGS', 'ypl_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('YPL_SAVED_SETTINGS', 'ypl_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('YPL_SAVED_SETTINGS', 'ypl_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('YPL_SAVED_SETTINGS', 'ypl_options');

