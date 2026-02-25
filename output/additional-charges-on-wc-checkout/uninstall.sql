-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_enable_additional_charges_options', 'wc_additional_fee_title', 'wc_additional_fee_amount', 'wc_additional_fee_categories', 'wc_additional_fee_products', 'wc_additional_fee_minimum_cart_amount', 'wc_additional_fee_condition_type', 'wc_additional_fee_include_shipping_charge', 'wc_additional_fee_type');

