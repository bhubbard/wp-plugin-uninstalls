#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wholesalex_settings'
wp option delete '__wholesalex_single_product_settings'
wp option delete '__wholesalex_single_product_discounts'
wp option delete '__wholesalex_dynamic_rules'
wp option delete '_wholesalex_roles'
wp option delete '__wholesalex_category_settings'
wp option delete '__wholesalex_category_discounts'
wp option delete '__wholesalex_profile_settings'
wp option delete '__wholesalex_profile_discounts'
wp option delete '__wholesalex_database_update_v2'
wp option delete '__wholesalex_single_product_db_update_v2'
wp option delete 'edd_wholesalex_license_data'
wp option delete '__wholesalex_registration_form'
wp option delete 'edd_wholesalex_license_status'
wp option delete '__wholesalex_license_type'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'wholesalex_installation_date'
wp option delete 'wholesalex_registration_form'
wp option delete 'woocommerce_registration_generate_username'
wp option delete '__wholesalex_customer_import_export_stats'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_currency'
wp option delete 'wsx__site_type'
wp option delete 'edd_wholesalex_license_key'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_tax_based_on'
wp option delete '__wholesalex_wallet_topup_product'
wp option delete '__wholesalex_email_templates'
wp option delete 'wholesalex_email_verification_email_status'
wp option delete '__wholesalex_initial_setup'
wp option delete '__site_type'

# Delete Transients
wp transient delete 'wholesalex_available_dynamic_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wholesalex_custom_chekcout_fields_%' OR option_name LIKE '_site_transient_wholesalex_custom_chekcout_fields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wholesalex_custom_checkout_fields_%' OR option_name LIKE '_site_transient_wholesalex_custom_checkout_fields_%'"
wp transient delete 'durbin_country_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wholesalex_registration_approval_required_email_status_%' OR option_name LIKE '_site_transient_wholesalex_registration_approval_required_email_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wholesalex_tax_exemption_%' OR option_name LIKE '_site_transient_wholesalex_tax_exemption_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wholesalex_force_free_shipping_%' OR option_name LIKE '_site_transient_wholesalex_force_free_shipping_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wholesalex_profile_shipping_methods_%' OR option_name LIKE '_site_transient_wholesalex_profile_shipping_methods_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wholesalex_shipping_methods_%' OR option_name LIKE '_site_transient_wholesalex_shipping_methods_%'"
wp transient delete 'wholesalex_b2bking_migrating'
wp transient delete 'wholesalex_wholesalex_suite_migrating'
wp transient delete 'wholesalex_b2bking_migration_stats'
wp transient delete 'wholesalex_wholesale_suite_migration_stats'
wp transient delete '__wholesalex_data_collection_consent'
wp transient delete '__wholesalex_get_updates_consent'

# Clear Cron Jobs
wp cron event delete 'importer_scheduled_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_base_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_base_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_base_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_base_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tiers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tiers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tiers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tiers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_post_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_post_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_post_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_post_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_post_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_post_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_post_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_post_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_email_confirmation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_email_confirmation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_email_confirmation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_email_confirmation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_account_confirmed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_account_confirmed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_account_confirmed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_account_confirmed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_registration_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_registration_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_registration_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_registration_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_b2b_separate_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_b2b_separate_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_b2b_separate_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_b2b_separate_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_b2b_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_b2b_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_b2b_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_b2b_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_b2b_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_b2b_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_b2b_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_b2b_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_b2b_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_b2b_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_b2b_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_b2b_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_b2b_variable_separate_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_b2b_variable_separate_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_b2b_variable_separate_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_b2b_variable_separate_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_b2b_variable_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_b2b_variable_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_b2b_variable_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_b2b_variable_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_b2b_variable_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_b2b_variable_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_b2b_variable_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_b2b_variable_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_profile_discounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_profile_discounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_profile_discounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_profile_discounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wholesalex_cf_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wholesalex_cf_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wholesalex_cf_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wholesalex_cf_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_wcpb_bundle_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_wcpb_bundle_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_wcpb_bundle_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_wcpb_bundle_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_account_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_account_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_account_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_account_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'file_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'file_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'file_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'file_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsx_change_role_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsx_change_role_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsx_change_role_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsx_change_role_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_page_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_page_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_page_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_page_visibility'"
