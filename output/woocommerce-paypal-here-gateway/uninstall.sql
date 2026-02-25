-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'sv_wc_apple_pay_cert_path', 'sv_wc_apple_pay_display_locations', 'woocommerce_default_country', 'sv_wc_apple_pay_enabled', 'sv_wc_apple_pay_test_mode', 'sv_wc_apple_pay_merchant_id', 'sv_wc_apple_pay_payment_gateway', 'sv_wc_apple_pay_button_style', 'woocommerce_calc_shipping', 'sv_wc_plugin_wc_versions');
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages';
DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%payment_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%payment_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%payment_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%payment_token';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%customer_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%customer_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%customer_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%customer_id';

