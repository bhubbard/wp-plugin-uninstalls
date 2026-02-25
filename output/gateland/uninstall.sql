-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gateland_notices', 'gateland_dismiss_notice_all', 'learndash_settings_gateland', 'gateland_mycred_title', 'pmpro_gateland_gateway', 'sliced_payments', 'woocommerce_woo_wallet_endpoint', 'nabik_sms', 'gateland_update_notices', 'gateland_active_gateways', 'nabik_sms_credit');
DELETE FROM wp_options WHERE option_name LIKE 'gateland_%';
DELETE FROM wp_options WHERE option_name LIKE 'gateland_dismiss_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'gateland_cf7_%';
DELETE FROM wp_options WHERE option_name LIKE 'pmpro_%';
DELETE FROM wp_options WHERE option_name LIKE 'ld_gateland_user_hash_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('authority', 'rcp_pending_subscription_amount', '_sliced_gateland_authority', '_sliced_payment', '_current_woo_wallet_balance', '_coupon_used', '_usage_limit', '_used_coupon_id', '_wpuf_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('authority', 'rcp_pending_subscription_amount', '_sliced_gateland_authority', '_sliced_payment', '_current_woo_wallet_balance', '_coupon_used', '_usage_limit', '_used_coupon_id', '_wpuf_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('authority', 'rcp_pending_subscription_amount', '_sliced_gateland_authority', '_sliced_payment', '_current_woo_wallet_balance', '_coupon_used', '_usage_limit', '_used_coupon_id', '_wpuf_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('authority', 'rcp_pending_subscription_amount', '_sliced_gateland_authority', '_sliced_payment', '_current_woo_wallet_balance', '_coupon_used', '_usage_limit', '_used_coupon_id', '_wpuf_form_id');

