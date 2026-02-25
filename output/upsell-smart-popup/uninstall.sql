-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usp_upsell_products_visibility_ids', 'usp_upsell_products_forced_qty_ids', 'woocommerce_enable_ajax_add_to_cart', 'usp_cart_modalbox_enabled', 'usp_cart_modalbox_heading', 'usp_cart_modalbox_delay', 'usp_cart_upsell_product_id', 'usp_cart_upsell_min_amount', 'usp_cart_upsell_max_amount', 'usp_cart_upsell_product_visibility', 'usp_cart_upsell_product_forced_qty', 'usp_checkout_modalbox_enabled', 'usp_checlout_modalbox_heading', 'usp_checkout_modalbox_delay', 'usp_checkout_upsell_product_id', 'usp_checkout_upsell_postcode', 'usp_checkout_upsell_product_visibility', 'usp_checkout_upsell_product_forced_qty', 'usp_upsell_product_rating_enabled', 'usp_upsell_product_brands_enabled', 'usp_upsell_product_sku_enabled', 'usp_upsell_product_availability_enabled', 'usp_modalbox_header_bg_color', 'usp_modalbox_header_text_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('usp_modalbox_heading', 'usp_modalbox_delay', 'usp_upsell_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('usp_modalbox_heading', 'usp_modalbox_delay', 'usp_upsell_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('usp_modalbox_heading', 'usp_modalbox_delay', 'usp_upsell_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('usp_modalbox_heading', 'usp_modalbox_delay', 'usp_upsell_product_id');

