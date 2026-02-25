-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('am_avatar_clean_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('am_custom_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('am_custom_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('am_custom_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('am_custom_avatar');

