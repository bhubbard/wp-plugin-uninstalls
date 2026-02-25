-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_round_at_subtotal', 'wc_weareplanet_base_gateway_url', 'woocommerce_manage_stock', 'ywpo_order_status', 'wc_weareplanet_payment_methods');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('weareplanet-previous-wc-min-version', '_weareplanet_subscription_space_id', '_weareplanet_subscription_token_id', '_weareplanet_subscription_failed_renewal');
DELETE FROM wp_usermeta WHERE meta_key IN ('weareplanet-previous-wc-min-version', '_weareplanet_subscription_space_id', '_weareplanet_subscription_token_id', '_weareplanet_subscription_failed_renewal');
DELETE FROM wp_termmeta WHERE meta_key IN ('weareplanet-previous-wc-min-version', '_weareplanet_subscription_space_id', '_weareplanet_subscription_token_id', '_weareplanet_subscription_failed_renewal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('weareplanet-previous-wc-min-version', '_weareplanet_subscription_space_id', '_weareplanet_subscription_token_id', '_weareplanet_subscription_failed_renewal');

