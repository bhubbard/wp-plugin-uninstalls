-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_catalog_orderby', 'swiftshop_version', 'swiftshop_activation_timestamp', 'woocommerce_placeholder_image', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_hide_out_of_stock_items', 'woocommerce_tax_display_shop', 'woocommerce_currency_pos');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'verified');

