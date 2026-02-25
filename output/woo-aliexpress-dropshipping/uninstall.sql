-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('multisupplier_extension_notice_dismissed', 'productUrl', '_price', 'product_views', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('multisupplier_extension_notice_dismissed', 'productUrl', '_price', 'product_views', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('multisupplier_extension_notice_dismissed', 'productUrl', '_price', 'product_views', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('multisupplier_extension_notice_dismissed', 'productUrl', '_price', 'product_views', '_wp_attachment_image_alt');

