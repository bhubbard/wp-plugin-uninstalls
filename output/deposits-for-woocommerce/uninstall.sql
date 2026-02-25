-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ci_woo_deposits_installed', 'csf_demo_mode', 'dfwc_plugin_review', 'bayna_update_completed', 'woocommerce_tax_display_cart', 'woocommerce_email_footer_text', 'bayna_review_later');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%';
DELETE FROM wp_options WHERE option_name LIKE 'cdx-bayna-plugin-info-%';
DELETE FROM wp_options WHERE option_name LIKE 'rn_last_notification_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpi_check_ran_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_enable_deposit', '_deposits_type', '_deposits_value', '_create_from_shop_order', 'deposit_value', '_genarate_deposit_orders', 'already_cancelled', '_force_deposit_checked', '_enable_variation_deposit', '_rn_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_enable_deposit', '_deposits_type', '_deposits_value', '_create_from_shop_order', 'deposit_value', '_genarate_deposit_orders', 'already_cancelled', '_force_deposit_checked', '_enable_variation_deposit', '_rn_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_enable_deposit', '_deposits_type', '_deposits_value', '_create_from_shop_order', 'deposit_value', '_genarate_deposit_orders', 'already_cancelled', '_force_deposit_checked', '_enable_variation_deposit', '_rn_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_enable_deposit', '_deposits_type', '_deposits_value', '_create_from_shop_order', 'deposit_value', '_genarate_deposit_orders', 'already_cancelled', '_force_deposit_checked', '_enable_variation_deposit', '_rn_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

