#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'convpfm_options'
wp option delete 'ee_options'
wp option delete 'convpfm_api_data'
wp option delete 'ee_api_data'
wp option delete 'convpfm_additional_data'
wp option delete 'ee_additional_data'
wp option delete 'convpfm_auto_update_id'
wp option delete 'ee_auto_update_id'
wp option delete 'convpfm_customer_gmail'
wp option delete 'ee_customer_gmail'
wp option delete 'convpfm_prod_response'
wp option delete 'ee_prod_response'
wp option delete 'convpfm_prod_mapped_cats'
wp option delete 'ee_prod_mapped_cats'
wp option delete 'convpfm_prod_mapped_attrs'
wp option delete 'ee_prod_mapped_attrs'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_default_country'
wp option delete 'convpfm_msg_nofifications'
wp option delete 'convpfm_cron_files'
wp option delete 'convpfm_microsoft_mail'
wp option delete 'convpfm_ms_target_country'
wp option delete 'convpfm_attributes_dropdown'
wp option delete 'convpfm_duplicates'
wp option delete 'convpfm_allow_updation'
wp option delete 'convpfm_channel_files'
wp option delete 'convpfm_extra_attributes'
wp option delete 'convpfm_add_mother_image'
wp option delete 'add_all_shipping'
wp option delete 'free_shipping'
wp option delete 'local_pickup_shipping'
wp option delete 'remove_free_shipping'
wp option delete 'product_changes'
wp option delete 'convpfm_channels'
wp option delete 'convpfm_structured_data_fix'
wp option delete 'add_convpfm_basic'
wp option delete 'litespeed.conf.cdn-exc'
wp option delete 'WpFastestCacheExclude'
wp option delete 'ossdl_off_exclude'
wp option delete 'breeze_cdn_integration'
wp option delete 'wpo_cache_config'
wp option delete 'cache_enabler'
wp option delete 'swift_performance_options'
wp option delete 'comet_cache_options'
wp option delete 'hyper-cache'
wp option delete 'add_aelia_support'
wp option delete 'wwpp_settings_mapped_methods_for_wholesale_users_only'
wp option delete 'wwpp_option_wholesale_role_shipping_zone_method_mapping'
wp option delete 'convpfm_channel_attributes'
wp option delete 'convpfm_batch_size'
wp option delete 'add_convpfm_logging'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'skroutz_apparel'
wp option delete 'skroutz_clr'
wp option delete 'skroutz_sz'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"
wp option delete 'woocommerce_weight_unit'

# Delete Transients
wp transient delete '_conversios_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'convpfm_cron_hook'
wp cron event delete 'convpfm_UpdateProject_stats'
wp cron event delete 'convpfm_deregister_hook'
wp cron event delete 'convpfm_create_batch_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convpfm_installment_months'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convpfm_installment_months'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convpfm_installment_months'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convpfm_installment_months'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convpfm_installment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convpfm_installment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convpfm_installment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convpfm_installment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convpfm_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convpfm_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convpfm_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convpfm_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_currency_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_currency_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_currency_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_currency_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_regular_currency_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_regular_currency_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_regular_currency_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_regular_currency_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_currency_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_currency_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_currency_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_currency_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_sale_currency_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_sale_currency_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_sale_currency_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_sale_currency_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convpfm_exclude_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convpfm_exclude_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convpfm_exclude_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convpfm_exclude_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwpp_ignore_cat_level_wholesale_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwpp_ignore_cat_level_wholesale_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwpp_ignore_cat_level_wholesale_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwpp_ignore_cat_level_wholesale_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwpp_product_wholesale_visibility_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwpp_product_wholesale_visibility_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwpp_product_wholesale_visibility_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwpp_product_wholesale_visibility_filter'"
