-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('um_gallery_version', 'um_options', 'um_gallery', 'um_gallery_pro_addons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('role', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('role', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('role', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('role', '_wp_page_template');

