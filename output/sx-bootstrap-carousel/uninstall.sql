-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sxbc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sxbc_image_url', 'sxbc_image_url_openblank', 'sxbc_image_link_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('sxbc_image_url', 'sxbc_image_url_openblank', 'sxbc_image_link_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('sxbc_image_url', 'sxbc_image_url_openblank', 'sxbc_image_link_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sxbc_image_url', 'sxbc_image_url_openblank', 'sxbc_image_link_text');

