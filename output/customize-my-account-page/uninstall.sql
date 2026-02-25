-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_orders_endpoint', 'woocommerce_myaccount_downloads_endpoint', 'woocommerce_myaccount_edit_address_endpoint', 'woocommerce_myaccount_payment_methods_endpoint', 'woocommerce_myaccount_edit_account_endpoint', 'woocommerce_logout_endpoint', 'woocommerce_myaccount_subscriptions_endpoint', 'woocommerce_myaccount_teams_area_endpoint', 'tgwc_flush_rewrite', 'tgwc_customize', 'tgwc_my_account_file_version', 'tgwc_debug_settings', 'tgwc_settings', 'tgwc_endpoints', 'tgwc_flat_settings_migrated', 'tgwc_version', 'tgwc_added_default_custom_endpoint', 'tgwc_active_endpoint');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tgwc_avatar_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('tgwc_avatar_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('tgwc_avatar_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tgwc_avatar_image');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%company';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%company';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%company';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%company';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%address_1';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%address_1';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%address_1';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address_1';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%address_2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%address_2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%address_2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address_2';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%city';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%city';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%city';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%city';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%postcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%postcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%postcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%postcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%country';

