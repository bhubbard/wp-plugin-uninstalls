#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_facebook_background_handle_virtual_products_variations_complete'
wp option delete 'wc_facebook_background_remove_duplicate_visibility_meta_complete'
wp option delete 'wc_facebook_whatsapp_consent_collection_setting_status'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'wc_facebook_feed_migrated'
wp option delete 'fb_test_pass'
wp option delete 'facebook_for_woocommerce_flush_rewrite_rules'
wp option delete 'facebook_for_woocommerce_rewrite_version'
wp option delete 'wc_facebook_svr_flags'
wp option delete 'wc_facebook_has_connected_fbe_2'
wp option delete 'wc_facebook_has_authorized_pages_read_engagement'
wp option delete 'wc_facebook_enable_messenger'
wp option delete 'wc_facebook_wa_integration_config_id'
wp option delete 'wc_facebook_last_attribute_sync'
wp option delete 'wc_facebook_merchant_access_token'
wp option delete 'wc_facebook_background_handle_virtual_products_variations_skipped'
wp option delete 'wc_facebook_excluded_product_category_ids'
wp option delete 'wc_facebook_excluded_product_tag_ids'
wp option delete 'elementor_pro_theme_builder_conditions'
wp option delete 'wc_facebook_language_feed_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version'"
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_feature_cost_of_goods_sold_enabled'
wp option delete 'fb_wmpl_language_visibility'
wp option delete 'woocommerce_facebookcommerce_settings'
wp option delete 'wc_facebook_page_access_token'
wp option delete 'woocommerce_facebookcommerce_legacy_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'fb_disable_sync_on_dev_environment'
wp option delete 'woocommerce_fb_autosync_time'
wp option delete 'fb_cart_url'
wp option delete 'wc_facebook_google_product_categories'
wp option delete 'wc_facebook_custom_attribute_mappings'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'wc_facebook_enable_product_sync'
wp option delete 'wc_facebook_product_attribute_mappings'

# Delete Transients
wp transient delete 'facebook_plugin_unmapped_attributes_info'
wp transient delete 'facebook_plugin_api_success'
wp transient delete 'facebook_plugin_api_info'
wp transient delete 'facebook_plugin_api_sticky'
wp transient delete 'facebook_plugin_resync_sticky'
wp transient delete 'facebook_plugin_api_error'
wp transient delete 'facebook_plugin_api_warning'
wp transient delete 'facebook_plugin_test_fail'
wp transient delete 'facebook_plugin_test_stack_trace'
wp transient delete 'wc_facebook_svr_flags_last_update'
wp transient delete 'wc_facebook_connection_invalid'
wp transient delete 'fb_product_set_banner_dismissed'
wp transient delete 'fb_new_unmapped_attribute_banner'
wp transient delete 'fb_show_banner_now'
wp transient delete 'facebook_for_woocommerce_attribute_notices'
wp transient delete 'wc_facebook_connection_failed'
wp transient delete 'global_logging_message_queue'
wp transient delete 'sv_wc_plugin_wc_versions'
wp transient delete 'wc_facebook_sync_in_progress'
wp transient delete 'upcoming_woo_all_products_banner_hide'
wp transient delete 'plugin_updated_banner_hide'
wp transient delete 'plugin_updated_with_master_sync_off_banner_hide'
wp transient delete 'wc_facebook_google_product_categories'
wp transient delete 'wc_facebook_background_product_sync_queue_empty'
wp transient delete 'wc_facebook_background_product_sync_sync_in_progress'
wp transient delete 'compat_checker_wc_versions'

# Clear Cron Jobs
wp cron event delete 'wc_facebook_async_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_impressions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_impressions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_impressions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_impressions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_change_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_change_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_change_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_change_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_age_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_age_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_age_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_age_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_material'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_material'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_material'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_material'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_pattern'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_pattern'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_pattern'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_enhanced_catalog_attributes_pattern'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_product_set_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_product_set_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_product_set_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_product_set_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_product_cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_product_cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_product_cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_product_cats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_inventory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_inventory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_inventory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_inventory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_facebook_additional_image_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_facebook_additional_image_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_facebook_additional_image_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_facebook_additional_image_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_material'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_material'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_material'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_material'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_pattern'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_pattern'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_pattern'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_pattern'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_age_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_age_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_age_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_age_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_product_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_product_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_product_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_product_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
