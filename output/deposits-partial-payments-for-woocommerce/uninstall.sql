-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awcdp_general_settings', 'awcdp_advanced_settings', 'woocommerce_prices_include_tax', 'awcdp_text_settings', 'active_sitewide_plugins', 'awdp_fee_label', 'woocommerce_checkout_pay_endpoint', 'woocommerce_checkout_order_received_endpoint', 'woocommerce_checkout_order_pay_endpoint', 'woocommerce_allow_bulk_remove_personal_data', 'woocommerce_tax_display_cart', 'awcdp_pys_pending_events');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('deposit_percentage', 'payment_details', 'first_name', '_awcdp_pys_purchase_tracked', '_awcdp_deposits_order_has_deposit', 'awcdp_deposits_balance_amount', '_awcdp_pys_full_payment_tracked', '_awcdp_deposits_deposit_amount', '_awcdp_deposits_payment_plan');
DELETE FROM wp_usermeta WHERE meta_key IN ('deposit_percentage', 'payment_details', 'first_name', '_awcdp_pys_purchase_tracked', '_awcdp_deposits_order_has_deposit', 'awcdp_deposits_balance_amount', '_awcdp_pys_full_payment_tracked', '_awcdp_deposits_deposit_amount', '_awcdp_deposits_payment_plan');
DELETE FROM wp_termmeta WHERE meta_key IN ('deposit_percentage', 'payment_details', 'first_name', '_awcdp_pys_purchase_tracked', '_awcdp_deposits_order_has_deposit', 'awcdp_deposits_balance_amount', '_awcdp_pys_full_payment_tracked', '_awcdp_deposits_deposit_amount', '_awcdp_deposits_payment_plan');
DELETE FROM wp_commentmeta WHERE meta_key IN ('deposit_percentage', 'payment_details', 'first_name', '_awcdp_pys_purchase_tracked', '_awcdp_deposits_order_has_deposit', 'awcdp_deposits_balance_amount', '_awcdp_pys_full_payment_tracked', '_awcdp_deposits_deposit_amount', '_awcdp_deposits_payment_plan');

