#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adt_pfp_activation_code_triggered'
wp option delete 'adt_add_facebook_pixel'
wp option delete 'add_facebook_capi'
wp option delete 'adt_facebook_pixel_id'
wp option delete 'adt_facebook_capi_token'
wp option delete 'adt_facebook_pixel_content_ids'
wp option delete 'adt_add_remarketing'
wp option delete 'adt_adwords_conversion_id'
wp option delete 'adt_last_order_id'
wp option delete 'adt_product_changes'
wp option delete 'woosea_allow_update'
wp option delete 'litespeed.conf.cdn-exc'
wp option delete 'WpFastestCacheExclude'
wp option delete 'ossdl_off_exclude'
wp option delete 'breeze_cdn_integration'
wp option delete 'wpo_cache_config'
wp option delete 'cache_enabler'
wp option delete 'swift_performance_options'
wp option delete 'comet_cache_options'
wp option delete 'hyper-cache'
wp option delete 'channel_attributes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'adt_use_parent_variable_product_image'
wp option delete 'skroutz_apparel'
wp option delete 'skroutz_clr'
wp option delete 'skroutz_sz'
wp option delete 'attributes_dropdown'
wp option delete 'woosea_gs_analysis_results'
wp option delete 'woosea_first_activation'
wp option delete 'woosea_count_activation'
wp option delete 'woosea_getelite_notification'
wp option delete 'woosea_license_notification_closed'
wp option delete 'adt_use_legacy_filters_and_rules'
wp option delete 'adt_disable_http_feed_generation'
wp option delete 'adt_enable_batch'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_marketing_page_closed'"
wp option delete 'woosea_review_interaction'
wp option delete 'adt_notification_meta'
wp option delete 'adt_enable_logging'
wp option delete 'adt_show_only_basis_attributes'
wp option delete 'adt_add_all_shipping'
wp option delete 'adt_remove_other_shipping_classes_on_free_shipping'
wp option delete 'adt_remove_free_shipping'
wp option delete 'adt_remove_local_pickup_shipping'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'adt_cron_projects'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'batch_project_%'"
wp option delete 'pfp_installed_by'
wp option delete 'adt_batch_size'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woosea_cat_mapping'
wp option delete 'plugin_settings'
wp option delete 'adt_clean_up_plugin_data'
wp option delete 'last_order_id'
wp option delete 'product_changes'
wp option delete 'cron_projects'
wp option delete 'add_mother_image'
wp option delete 'add_all_shipping'
wp option delete 'free_shipping'
wp option delete 'remove_free_shipping'
wp option delete 'remove_local_pickup'
wp option delete 'local_pickup_shipping'
wp option delete 'show_only_basis_attributes'
wp option delete 'enable_logging'
wp option delete 'add_facebook_pixel'
wp option delete 'facebook_pixel_id'
wp option delete 'add_facebook_pixel_content_ids'
wp option delete 'add_remarketing'
wp option delete 'adwords_conversion_id'
wp option delete 'add_batch'
wp option delete 'batch_size'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_adt_variation_sales_%' OR option_name LIKE '_site_transient_adt_variation_sales_%'"
wp transient delete 'adt_transient_custom_attributes'

# Clear Cron Jobs
wp cron event delete 'woosea_cron_hook'
wp cron event delete 'adt_pfp_cron_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woosea_installment_months'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woosea_installment_months'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woosea_installment_months'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woosea_installment_months'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woosea_installment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woosea_installment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woosea_installment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woosea_installment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woosea_exclude_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woosea_exclude_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woosea_exclude_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woosea_exclude_product'"
