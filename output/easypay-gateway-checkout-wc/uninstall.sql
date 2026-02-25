-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easypay_store_key', 'epwc_multiple_checkout', 'easypay_sandbox', 'epwc_allowed_payment_methods', 'epwc_force_multiple_checkout', 'epwc_plugin_settings', 'easypay_logo', 'epwc_checkout_display', 'epwc_checkout_hide_details', 'epwc_checkout_order_flow', 'woocommerce_applepay_checkout_settings', 'woocommerce_virtualiban_checkout_settings', 'woocommerce_creditcard_checkout_settings', 'woocommerce_debitodireto_checkout_settings', 'epwc_woocommerce_easypay_checkout_settings', 'woocommerce_googlepay_checkout_settings', 'woocommerce_mbway_checkout_settings', 'woocommerce_multibanco_checkout_settings', 'woocommerce_santanderconsumer_checkout_settings', 'woocommerce_universoflex_checkout_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fiscal_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('fiscal_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('fiscal_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fiscal_number');

