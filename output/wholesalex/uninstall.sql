-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wholesalex_settings', '__wholesalex_single_product_settings', '__wholesalex_single_product_discounts', '__wholesalex_dynamic_rules', '_wholesalex_roles', '__wholesalex_category_settings', '__wholesalex_category_discounts', '__wholesalex_profile_settings', '__wholesalex_profile_discounts', '__wholesalex_database_update_v2', '__wholesalex_single_product_db_update_v2', 'edd_wholesalex_license_data', '__wholesalex_registration_form', 'edd_wholesalex_license_status', '__wholesalex_license_type', 'active_sitewide_plugins', 'woocommerce_myaccount_page_id', 'woocommerce_shop_page_id', 'wholesalex_installation_date', 'wholesalex_registration_form', 'woocommerce_registration_generate_username', '__wholesalex_customer_import_export_stats', 'woocommerce_currency_pos', 'woocommerce_manage_stock', 'woocommerce_notify_no_stock_amount', 'woocommerce_currency', 'wsx__site_type', 'edd_wholesalex_license_key', 'woocommerce_email_background_color', 'woocommerce_email_body_background_color', 'woocommerce_email_base_color', 'woocommerce_email_text_color', 'woocommerce_email_header_image', 'woocommerce_email_footer_text', 'woocommerce_weight_unit', 'woocommerce_tax_based_on', '__wholesalex_wallet_topup_product', '__wholesalex_email_templates', 'wholesalex_email_verification_email_status', '__wholesalex_initial_setup', '__site_type', 'wholesalex_available_dynamic_rules', 'durbin_country_code', 'wholesalex_b2bking_migrating', 'wholesalex_wholesalex_suite_migrating', 'wholesalex_b2bking_migration_stats', 'wholesalex_wholesale_suite_migration_stats', '__wholesalex_data_collection_consent', '__wholesalex_get_updates_consent');
DELETE FROM wp_options WHERE option_name LIKE 'wholesalex_custom_chekcout_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'wholesalex_custom_checkout_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'wholesalex_registration_approval_required_email_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'wholesalex_tax_exemption_%';
DELETE FROM wp_options WHERE option_name LIKE 'wholesalex_force_free_shipping_%';
DELETE FROM wp_options WHERE option_name LIKE 'wholesalex_profile_shipping_methods_%';
DELETE FROM wp_options WHERE option_name LIKE 'wholesalex_shipping_methods_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('__wholesalex_role', '__wholesalex_status', 'avatar', 'billing_post_code', 'shipping_post_code', '__wholesalex_email_confirmation_code', '__wholesalex_account_confirmed', '__wholesalex_registration_role', 'wholesalex_b2b_separate_stock_status', 'wholesalex_b2b_stock', 'wholesalex_b2b_backorders', 'wholesalex_b2b_stock_status', 'wholesalex_b2b_variable_separate_stock_status', 'wholesalex_b2b_variable_stock', 'wholesalex_b2b_variable_backorders', '__wholesalex_profile_discounts', 'woosb_ids', '_sale_price', '__wholesalex_profile_settings', 'first_name', 'last_name', '_yith_wcpb_bundle_data', '_price', '_regular_price', '_sale_price_dates_from', '_product_addons', '__wholesalex_account_type', 'wsx_change_role_request', '_custom_page_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('__wholesalex_role', '__wholesalex_status', 'avatar', 'billing_post_code', 'shipping_post_code', '__wholesalex_email_confirmation_code', '__wholesalex_account_confirmed', '__wholesalex_registration_role', 'wholesalex_b2b_separate_stock_status', 'wholesalex_b2b_stock', 'wholesalex_b2b_backorders', 'wholesalex_b2b_stock_status', 'wholesalex_b2b_variable_separate_stock_status', 'wholesalex_b2b_variable_stock', 'wholesalex_b2b_variable_backorders', '__wholesalex_profile_discounts', 'woosb_ids', '_sale_price', '__wholesalex_profile_settings', 'first_name', 'last_name', '_yith_wcpb_bundle_data', '_price', '_regular_price', '_sale_price_dates_from', '_product_addons', '__wholesalex_account_type', 'wsx_change_role_request', '_custom_page_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('__wholesalex_role', '__wholesalex_status', 'avatar', 'billing_post_code', 'shipping_post_code', '__wholesalex_email_confirmation_code', '__wholesalex_account_confirmed', '__wholesalex_registration_role', 'wholesalex_b2b_separate_stock_status', 'wholesalex_b2b_stock', 'wholesalex_b2b_backorders', 'wholesalex_b2b_stock_status', 'wholesalex_b2b_variable_separate_stock_status', 'wholesalex_b2b_variable_stock', 'wholesalex_b2b_variable_backorders', '__wholesalex_profile_discounts', 'woosb_ids', '_sale_price', '__wholesalex_profile_settings', 'first_name', 'last_name', '_yith_wcpb_bundle_data', '_price', '_regular_price', '_sale_price_dates_from', '_product_addons', '__wholesalex_account_type', 'wsx_change_role_request', '_custom_page_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('__wholesalex_role', '__wholesalex_status', 'avatar', 'billing_post_code', 'shipping_post_code', '__wholesalex_email_confirmation_code', '__wholesalex_account_confirmed', '__wholesalex_registration_role', 'wholesalex_b2b_separate_stock_status', 'wholesalex_b2b_stock', 'wholesalex_b2b_backorders', 'wholesalex_b2b_stock_status', 'wholesalex_b2b_variable_separate_stock_status', 'wholesalex_b2b_variable_stock', 'wholesalex_b2b_variable_backorders', '__wholesalex_profile_discounts', 'woosb_ids', '_sale_price', '__wholesalex_profile_settings', 'first_name', 'last_name', '_yith_wcpb_bundle_data', '_price', '_regular_price', '_sale_price_dates_from', '_product_addons', '__wholesalex_account_type', 'wsx_change_role_request', '_custom_page_visibility');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sale_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sale_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sale_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sale_price';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_base_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_base_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_base_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_base_price';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tiers';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tiers';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tiers';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tiers';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wholesalex_cf_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wholesalex_cf_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wholesalex_cf_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wholesalex_cf_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_regular_price';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_regular_price';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_regular_price';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_regular_price';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'file_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'file_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'file_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'file_%';

