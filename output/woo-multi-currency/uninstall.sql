-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmc_selected_currencies', 'wmc_currency_by_country', 'wmc_oder_id', 'wmc_email', 'wmc_enable_approxi', 'wmc_price_by_currency', 'wmc_allow_multi', 'woo_multi_currency_params', 'woo_multi_currency_old_version', 'woocommerce_currency', 'woocommerce_tax_round_at_subtotal', 'woocommerce_tax_total_display', 'woocommerce_price_decimal_sep', 'woocommerce_currency_pos', 'woocommerce_price_num_decimals', '_cfw__settings', 'woocommerce_tax_display_shop', 'villatheme_hide_admin_toolbar', 'woocommerce_tax_display_cart', 'learnpress_version', 'vpc-license-key', '_woosb_price_format', 'woocommerce_myaccount_page_id', 'awdr_compatibility', 'woocommerce_price_thousand_sep', 'yith-wfbt-discount-name', 'wmc_update_exchange_rate', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wmc_order_info', '_order_currency', 'wcbp_bundle_prod_pricing', '_EventCost');
DELETE FROM wp_usermeta WHERE meta_key IN ('wmc_order_info', '_order_currency', 'wcbp_bundle_prod_pricing', '_EventCost');
DELETE FROM wp_termmeta WHERE meta_key IN ('wmc_order_info', '_order_currency', 'wcbp_bundle_prod_pricing', '_EventCost');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wmc_order_info', '_order_currency', 'wcbp_bundle_prod_pricing', '_EventCost');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_min_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wmc_vicatna_nyp_min_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_min_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_min_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_max_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wmc_vicatna_nyp_max_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_max_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_max_%';

