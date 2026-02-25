#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dokan_background_processes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_displayed_time'"
wp option delete 'dokan_admin_setup_guide_steps_completed'
wp option delete 'dokan_legacy_dashboard_page'
wp option delete 'dokan_advertisement_product_id'
wp option delete 'dokan_reverse_withdrawal_product_id'
wp option delete '_dokan_limited_time_promo'
wp option delete 'dokan_lite_whats_new_versions'
wp option delete 'dokan_pro_whats_new_versions'
wp option delete 'dismiss_dokan_admin_logo_update_notice'
wp option delete 'dokan_review_notice_hidden'
wp option delete 'dokan_review_notice_postponed'
wp option delete 'dokan_installed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_completed'"
wp option delete 'dokan_appearance'
wp option delete 'dokan_selling'
wp option delete 'dokan_withdraw'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dokan_pointer_%'"
wp option delete 'dokan_general'
wp option delete 'dokan_share_essentials'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'dokan_admin_setup_wizard_ready'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_setup_background_installing_%'"
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_product_type'
wp option delete 'woocommerce_sell_in_person'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_thousand_sep'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'dokan_hide_pro_nag'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_manage_stock'
wp option delete 'default_product_cat'
wp option delete 'woocommerce_calc_shipping'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'dokan_pro_active_modules'
wp option delete 'dokan_theme_version'
wp option delete 'dokan_pages_created'
wp option delete 'dokan_pages'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_catalog_columns'
wp option delete 'dokan_onboarding'
wp option delete 'dokan_marketplace_goal'
wp option delete 'dokan_dummy_data_import_success'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_calc_discounts_sequentially'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_permalinks'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'dokan_rewrite_rules_needs_flashing'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'dokan_4th_yr_aniv_44_perc_discount_tracking_notice'
wp option delete 'product_style'
wp option delete '_dokan_aff_ref'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_enable_order_comments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'dokan_wc_missing_notice'
wp transient delete '_dokan_setup_page_redirect'
wp transient delete 'dokan_legacy_dashboard_page'
wp transient delete 'dokan_legacy_changelog_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_page' OR option_name LIKE '_site_transient_%_page'"
wp transient delete 'get_dokan_settings_fields'
wp transient delete 'dokan_setup_wizard_no_wc'
wp transient delete '_wc_activation_redirect'
wp transient delete 'dokan_help_docs'
wp transient delete 'dokan_variable_products_author_updated'
wp transient delete 'dokan_store_follow_deactivated_forcefully'
wp transient delete 'dokan_theme_version_for_updater'
wp transient delete 'dokan_legacy_vendors_page'
wp transient delete 'dokan_legacy_withdraw_page'
wp transient delete 'dokan_store_listing_random_orderby'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_publishing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_publishing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_publishing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_publishing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_feature_seller'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_feature_seller'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_feature_seller'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_feature_seller'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_admin_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_admin_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_admin_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_admin_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_admin_percentage_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_admin_percentage_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_admin_percentage_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_admin_percentage_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokan_catalog_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokan_catalog_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokan_catalog_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokan_catalog_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_admin_additional_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_admin_additional_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_admin_additional_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_admin_additional_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_category_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_category_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_category_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_category_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'per_category_admin_commission_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'per_category_admin_commission_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'per_category_admin_commission_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'per_category_admin_commission_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'per_category_admin_additional_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'per_category_admin_additional_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'per_category_admin_additional_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'per_category_admin_additional_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'per_category_admin_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'per_category_admin_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'per_category_admin_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'per_category_admin_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_dummy_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_dummy_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_dummy_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_dummy_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokan_new_product_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokan_new_product_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokan_new_product_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokan_new_product_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chosen_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chosen_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chosen_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chosen_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_withdraw_default_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_withdraw_default_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_withdraw_default_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_withdraw_default_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_has_attribute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_has_attribute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_has_attribute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_has_attribute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_create_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_create_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_create_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_create_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_seller_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_seller_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_seller_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_seller_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_per_product_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_per_product_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_per_product_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_per_product_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_per_product_admin_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_per_product_admin_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_per_product_admin_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_per_product_admin_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'per_category_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'per_category_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'per_category_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'per_category_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokan_admin_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokan_admin_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokan_admin_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokan_admin_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reset_sub_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reset_sub_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reset_sub_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reset_sub_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_cat_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_cat_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_cat_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_cat_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_cat_icon_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_cat_icon_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_cat_icon_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_cat_icon_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'withdraw_date_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'withdraw_date_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'withdraw_date_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'withdraw_date_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pageview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pageview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pageview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pageview'"
