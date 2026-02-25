-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('viwebpos_receipts_params', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'viwebpos_params', 'woocommerce_tax_display_cart', 'woocommerce_version', 'woocommerce_calc_discounts_sequentially', 'woocommerce_tax_round_at_subtotal', 'woocommerce_tax_display_shop', 'woocommerce_default_country', 'woocommerce_prices_include_tax', 'villatheme_hide_admin_toolbar', 'viwebpos_update_database', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_prefix';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('viwebpos_barcode', 'shipping_company', 'billing_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('viwebpos_barcode', 'shipping_company', 'billing_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('viwebpos_barcode', 'shipping_company', 'billing_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('viwebpos_barcode', 'shipping_company', 'billing_company');

