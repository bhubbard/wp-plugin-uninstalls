-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_round_at_subtotal', 'wc_wallee_base_gateway_url', 'woocommerce_manage_stock', 'ywpo_order_status', 'wc_wallee_payment_methods');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wallee-previous-wc-min-version', '_wallee_subscription_space_id', '_wallee_subscription_token_id', '_wallee_subscription_failed_renewal');
DELETE FROM wp_usermeta WHERE meta_key IN ('wallee-previous-wc-min-version', '_wallee_subscription_space_id', '_wallee_subscription_token_id', '_wallee_subscription_failed_renewal');
DELETE FROM wp_termmeta WHERE meta_key IN ('wallee-previous-wc-min-version', '_wallee_subscription_space_id', '_wallee_subscription_token_id', '_wallee_subscription_failed_renewal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wallee-previous-wc-min-version', '_wallee_subscription_space_id', '_wallee_subscription_token_id', '_wallee_subscription_failed_renewal');

