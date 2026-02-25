-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_css_print_method');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_wp_attachment_image_alt', '_taxonomy_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_wp_attachment_image_alt', '_taxonomy_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_wp_attachment_image_alt', '_taxonomy_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_wp_attachment_image_alt', '_taxonomy_options');

