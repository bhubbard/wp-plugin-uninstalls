-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wirecard_split_app_id', 'wirecard_split_secret', 'wirecard_split_nonce', 'wirecard_split_user', 'wcfm_page_options', 'wcfm_endpoints', 'dokan_selling', 'wcfm_commission_options', 'wcbcf_settings', 'wirecard_split_accesstoken', 'wirecard_split_siteurl', 'wirecard_split_redirecturl');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wbo_billet_linecode', '_wbo_billet_link', '_wbo_creditcard_brand', '_wbo_creditcard_cpf_number', '_wbo_creditcard_birth_number', '_wbo_payment_method', '_wirecard_account_id', '_wirecard_access_token', 'wcfmmp_profile_settings', '_moip_bundle_product_price', '_moip_order_authorized', '_billing_email', '_billing_first_name', '_moip_payment_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wbo_billet_linecode', '_wbo_billet_link', '_wbo_creditcard_brand', '_wbo_creditcard_cpf_number', '_wbo_creditcard_birth_number', '_wbo_payment_method', '_wirecard_account_id', '_wirecard_access_token', 'wcfmmp_profile_settings', '_moip_bundle_product_price', '_moip_order_authorized', '_billing_email', '_billing_first_name', '_moip_payment_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wbo_billet_linecode', '_wbo_billet_link', '_wbo_creditcard_brand', '_wbo_creditcard_cpf_number', '_wbo_creditcard_birth_number', '_wbo_payment_method', '_wirecard_account_id', '_wirecard_access_token', 'wcfmmp_profile_settings', '_moip_bundle_product_price', '_moip_order_authorized', '_billing_email', '_billing_first_name', '_moip_payment_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wbo_billet_linecode', '_wbo_billet_link', '_wbo_creditcard_brand', '_wbo_creditcard_cpf_number', '_wbo_creditcard_birth_number', '_wbo_payment_method', '_wirecard_account_id', '_wirecard_access_token', 'wcfmmp_profile_settings', '_moip_bundle_product_price', '_moip_order_authorized', '_billing_email', '_billing_first_name', '_moip_payment_type');

