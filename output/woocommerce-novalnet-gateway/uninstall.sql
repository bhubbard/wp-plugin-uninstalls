-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gzdp_checkout_enable', 'woocommerce_enable_signup_from_checkout_for_subscriptions', 'woocommerce_enable_guest_checkout', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_tax_based_on', 'woocommerce_checkout_phone_field', 'novalnet_admin_full_refund', 'novalnet_enable_subs', 'novalnet_enable_shop_subs', 'novalnet_subs_tariff_id', 'novalnet_usr_subcl', 'novalnet_key_password', 'novalnet_db_version', 'woocommerce_gateway_order', 'novalnet_public_key', 'novalnet_client_key', 'novalnet_enable_callback', 'novalnet_callback_emailtoaddr', 'woocommerce_novalnet_guaranteed_sepa_settings', 'woocommerce_novalnet_guaranteed_invoice_settings', 'woocommerce_gzd_display_checkout_fallback', 'woocommerce_default_country');
DELETE FROM wp_options WHERE option_name LIKE 'novalnet_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nn_subscription_updated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nn_subscription_updated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nn_subscription_updated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nn_subscription_updated');

