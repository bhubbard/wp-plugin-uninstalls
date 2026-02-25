#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wf_schedule'
wp option delete 'woocs'
wp option delete 'woo_multi_currency_params'
wp option delete 'woo_feed_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_feed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_config%'"
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wpfp_option'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'wpf_message'
wp option delete 'litespeed.conf.cdn-exc'
wp option delete 'WpFastestCacheExclude'
wp option delete 'ossdl_off_exclude'
wp option delete 'breeze_cdn_integration'
wp option delete 'wpo_cache_config'
wp option delete 'cache_enabler'
wp option delete 'swift_performance_options'
wp option delete 'sbp_options'
wp option delete 'comet_cache_options'
wp option delete 'hyper-cache'
wp option delete 'vtprd_rules_set'
wp option delete 'trp_settings'
wp option delete 'woocs_is_multiple_allowed'
wp option delete '_wcml_settings'
wp option delete 'woo_feed_free_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_feed_%'"
wp option delete 'woo_feed_version'
wp option delete 'woo-feed-free-activation-time'
wp option delete 'woo-feed-activation-time'
wp option delete 'WPF_DIRECTORY_PERMISSION_CHECK'
wp option delete 'woo_feed_notices'
wp option delete 'woo_feed_custom_template_1'
wp option delete 'wpseo_titles'
wp option delete 'wf_check_duplicate'
wp option delete 'wpfw_vAttributes'
wp option delete 'wpfw_customAttributes'
wp option delete 'wpfw_customMetaKeys'
wp option delete 'wpfw_customTaxonomy'
wp option delete 'woo_feed_review_notice_next_show_time'
wp option delete 'woo_feed_wpml_notice_hidden'
wp option delete 'woo_feed_rp-wcdpd_notice_hidden'
wp option delete 'woo_feed_review_notice'
wp option delete 'woo_feed_hide_promotion'
wp option delete 'icl_sitepress_settings'
wp option delete 'woo_feed_product_attributes'
wp option delete 'woo_feed_webappick_posts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp option delete 'woo_feed_per_batch'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'ctx_feed_structure_transient'
wp transient delete 'webappick_feed_help_docs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient___woo_feed_cache_%' OR option_name LIKE '_site_transient___woo_feed_cache_%'"
wp transient delete 'woo_feed_installing'
wp transient delete '__woo_feed_cache_woo_feed_dropdown_product_attributes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached_promos' OR option_name LIKE '_site_transient_%_cached_promos'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wf-plugin-info-%' OR option_name LIKE '_site_transient_wf-plugin-info-%'"

# Clear Cron Jobs
wp cron event delete 'woo_feed_update'
wp cron event delete 'woo_feed_update_single_feed'
wp cron event delete 'woo_feed_corn'
wp cron event delete 'woo_feed_cleanup_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_availability_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_availability_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_availability_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_availability_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_availability_date_var'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_availability_date_var'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_availability_date_var'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_availability_date_var'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosg_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosg_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosg_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosg_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_gtin_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_gtin_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_gtin_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_gtin_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_old_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_old_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_old_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_old_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodmart_variation_gallery_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodmart_variation_gallery_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodmart_variation_gallery_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodmart_variation_gallery_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wd_additional_variation_images_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wd_additional_variation_images_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wd_additional_variation_images_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wd_additional_variation_images_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_summer_sale_notice_2025_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_summer_sale_notice_2025_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_summer_sale_notice_2025_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_summer_sale_notice_2025_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_blackfriday_notice_2025_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_blackfriday_notice_2025_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_blackfriday_notice_2025_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_blackfriday_notice_2025_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_halloween_notice_2025_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_halloween_notice_2025_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_halloween_notice_2025_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_halloween_notice_2025_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_halloween_notice_2023_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_halloween_notice_2023_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_halloween_notice_2023_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_halloween_notice_2023_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_christmas_notice_2025_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_christmas_notice_2025_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_christmas_notice_2025_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_christmas_notice_2025_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_christmas_notice_2024_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_christmas_notice_2024_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_christmas_notice_2024_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_christmas_notice_2024_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_global_identifier_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_global_identifier_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_global_identifier_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_global_identifier_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_variation_global_identifiers_values'"
