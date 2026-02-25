-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_placeholder_image', 'mpvw_requirement_notice_ffmpeg', 'mpvw_requirements_notice_woocommerce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'meta-box-order_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'meta-box-order_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'meta-box-order_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'meta-box-order_product');

