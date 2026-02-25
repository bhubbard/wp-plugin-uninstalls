-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voucherify_app_id', 'voucherify_app_secret_key', 'voucherify_enabled', 'voucherify_rollback_enabled', 'voucherify_lock_ttl', 'voucherify_lock_ttl_unit', 'voucherify_wc_subs_apply_on_renewals', 'woocommerce_shipping_tax_class', 'woocommerce_tax_based_on', 'woocommerce_tax_display_cart', 'voucherify_api_endpoint', 'vcrf_resynchronize');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_update');

