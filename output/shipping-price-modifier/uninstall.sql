-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynowp_shipping_price_modifier_options', 'woocommerce_currency_pos');

