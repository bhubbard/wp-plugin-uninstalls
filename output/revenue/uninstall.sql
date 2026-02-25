-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revenue_bundle_parent_product_id', 'woocommerce_tax_display_cart', 'woocommerce_tax_display_shop', 'revenue_settings', 'edd_revenue_license_data', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'revenue_installed_time', 'active_sitewide_plugins', 'edd_revenue_license_key', '_revenue_activation_redirect', 'durbin_country_code');
DELETE FROM wp_options WHERE option_name LIKE 'revenue_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_revx_next_order_coupon_id', '_revx_next_order_coupon_enable', '_revx_custom_coupon_text', 'etn_event_logo', 'etn_ticket_variations');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_revx_next_order_coupon_id', '_revx_next_order_coupon_enable', '_revx_custom_coupon_text', 'etn_event_logo', 'etn_ticket_variations');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_revx_next_order_coupon_id', '_revx_next_order_coupon_enable', '_revx_custom_coupon_text', 'etn_event_logo', 'etn_ticket_variations');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_regular_price', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_revx_next_order_coupon_id', '_revx_next_order_coupon_enable', '_revx_custom_coupon_text', 'etn_event_logo', 'etn_ticket_variations');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_revx_next_order_campaign_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_revx_next_order_campaign_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_revx_next_order_campaign_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_revx_next_order_campaign_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_revx_next_order_coupon_eligible_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_revx_next_order_coupon_eligible_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_revx_next_order_coupon_eligible_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_revx_next_order_coupon_eligible_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_views_counter';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_views_counter';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_views_counter';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_views_counter';

