-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yaydp_product_pricing_rules', 'yaydp_removed_product_pricing_rules', 'yaydp_cart_discount_rules', 'yaydp_removed_cart_discount_rules', 'yaydp_checkout_fee_rules', 'yaydp_removed_checkout_fee_rules', 'yaydp_exclude_rules', 'yaydp_product_collections_rules', 'yaydp_core_settings', 'yaydp_rules', 'woocommerce_checkout_page_id', 'woocommerce_currency', 'woocommerce_tax_display_shop', 'yaydp_prevent_yaycurrency_convert_hooks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yaydp_product_pricing_rules', 'first_name', 'last_name', 'yaydp_cart_discount_rules', 'yaydp_checkout_fee_rules', 'b2bking_registration_role', 'saso_eventtickets_is_ticket', '_is_extra_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('yaydp_product_pricing_rules', 'first_name', 'last_name', 'yaydp_cart_discount_rules', 'yaydp_checkout_fee_rules', 'b2bking_registration_role', 'saso_eventtickets_is_ticket', '_is_extra_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('yaydp_product_pricing_rules', 'first_name', 'last_name', 'yaydp_cart_discount_rules', 'yaydp_checkout_fee_rules', 'b2bking_registration_role', 'saso_eventtickets_is_ticket', '_is_extra_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yaydp_product_pricing_rules', 'first_name', 'last_name', 'yaydp_cart_discount_rules', 'yaydp_checkout_fee_rules', 'b2bking_registration_role', 'saso_eventtickets_is_ticket', '_is_extra_product');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%';

