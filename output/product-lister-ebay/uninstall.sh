#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ced_ebay_user_access_token'
wp option delete 'ced_ebay_mode_of_operation'
wp option delete 'ced_ebay_oauth_error_description'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_listing_url_tld_%'"
wp option delete 'ced_ebay_access_token_response'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_product_ids_in_profile_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_category_attr_val_%'"
wp option delete 'ced_ebay_saved_category'
wp option delete 'ced_woo_ebay_mapped_categories'
wp option delete 'ced_woo_ebay_mapped_secondary_categories'
wp option delete 'ced_woo_ebay_mapped_categories_name'
wp option delete 'ced_woo_ebay_mapped_secondary_categories_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_seller_preferences_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_out_of_stock_preference_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_inventory_report_location_%'"
wp option delete 'ced_umb_ebay_ebay_details'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_store_data_%'"
wp option delete 'ced_umb_ebay_ebay_merchant_application_keys'
wp option delete 'ced_ebay_global_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_umb_ebay_site_selected_return_methods_%'"
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_umb_ebay_site_selected_payment_methods_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_site_email_address_%'"
wp option delete 'ced_umb_ebay_cronRelatedData'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_store_category_mapping_html_markup_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_umb_ebay_site_payment_methods_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_umb_ebay_site_return_methods_%'"
wp option delete 'ced_umb_ebay_ebay_merchant_details'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_product_section_per_page_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_categories%'"
wp option delete 'CedUmbProfileSelectedMetaKeys'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ced_ebay_user_access_token_%' OR option_name LIKE '_site_transient_ced_ebay_user_access_token_%'"
wp transient delete 'ced-ebay-admin-notice'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_profile_assigned%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_profile_assigned%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_profile_assigned%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_profile_assigned%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_category_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_category_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_category_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_category_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_profile_created_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_profile_created_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_profile_created_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_profile_created_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_profile_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_profile_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_profile_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_profile_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_mapped_category_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_mapped_category_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_mapped_category_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_mapped_category_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_secondary_category_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_secondary_category_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_secondary_category_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_secondary_category_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_mapped_secondary_category_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_mapped_secondary_category_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_mapped_secondary_category_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_mapped_secondary_category_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_ebay_listing_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_ebay_listing_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_ebay_listing_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_ebay_listing_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_ebay_relist_item_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_ebay_relist_item_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_ebay_relist_item_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_ebay_relist_item_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_ebay_promoted_listings_ad_data_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_ebay_promoted_listings_ad_data_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_ebay_promoted_listings_ad_data_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_ebay_promoted_listings_ad_data_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_umb_ebay_product_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_umb_ebay_product_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_umb_ebay_product_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_umb_ebay_product_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_umb_ebay_private_listing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_umb_ebay_private_listing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_umb_ebay_private_listing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_umb_ebay_private_listing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebay_listing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebay_listing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebay_listing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebay_listing_type'"
