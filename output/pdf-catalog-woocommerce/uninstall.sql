-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gmwcpkey', '_wp_attachment_image_alt', '_gmwcp_exclude_product_single');
DELETE FROM wp_usermeta WHERE meta_key IN ('gmwcpkey', '_wp_attachment_image_alt', '_gmwcp_exclude_product_single');
DELETE FROM wp_termmeta WHERE meta_key IN ('gmwcpkey', '_wp_attachment_image_alt', '_gmwcp_exclude_product_single');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gmwcpkey', '_wp_attachment_image_alt', '_gmwcp_exclude_product_single');

