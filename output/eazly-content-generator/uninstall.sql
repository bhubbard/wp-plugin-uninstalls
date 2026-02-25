-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eazly_placeholder_image_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eazly_dummy_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eazly_dummy_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eazly_dummy_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eazly_dummy_content');

