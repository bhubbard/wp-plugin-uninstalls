-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'woocommerce_catalog_columns', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'woocommerce_enable_order_comments', 'woocommerce_ship_to_destination', 'woocommerce_hide_out_of_stock_items', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bazario_template_type', '_wp_attachment_image_alt', 'thumbnail_id', '_sold_individually');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bazario_template_type', '_wp_attachment_image_alt', 'thumbnail_id', '_sold_individually');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bazario_template_type', '_wp_attachment_image_alt', 'thumbnail_id', '_sold_individually');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bazario_template_type', '_wp_attachment_image_alt', 'thumbnail_id', '_sold_individually');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

