-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mrm_username', 'mrm_button_location', '_magic_button', '_magic_button_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('mrm_username', 'mrm_button_location', '_magic_button', '_magic_button_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('mrm_username', 'mrm_button_location', '_magic_button', '_magic_button_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mrm_username', 'mrm_button_location', '_magic_button', '_magic_button_slug');

