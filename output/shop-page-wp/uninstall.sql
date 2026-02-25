-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shop-page-wp-button-text', 'shop-page-wp-show-choose-styles', 'shop-page-wp-show-default-columns', 'shop-page-wp-link-target', 'shop-page-wp-legacy-format', 'shop-page-wp-image-width', 'shop-page-wp-image-height', 'shop-page-wp-image-crop', 'shop-page-wp-iw-field-change', 'shop-page-wp-ih-field-change', 'shop-page-wp-ic-field-change');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

