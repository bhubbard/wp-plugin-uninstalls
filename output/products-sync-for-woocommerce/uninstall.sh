#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_filter_api_response_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_response_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_current_api_response_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_response_count_temp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_total_batches'"
wp option delete 'rewrite_rules'
wp option delete 'cron'

# Delete Transients
wp transient delete 'mowcps_product_deletion_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mowcps_sns_reset_batch_%' OR option_name LIKE '_site_transient_mowcps_sns_reset_batch_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mowcps_sns_new_api_data_%' OR option_name LIKE '_site_transient_mowcps_sns_new_api_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mowcps_sns_batch_fully_completed_%' OR option_name LIKE '_site_transient_mowcps_sns_batch_fully_completed_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MOWCPS_connection_name_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MOWCPS_connection_name_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MOWCPS_connection_name_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MOWCPS_connection_name_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_api_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_api_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_api_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_api_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trends_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trends_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trends_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trends_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trends_category_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trends_category_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trends_category_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trends_category_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trends_parent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trends_parent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trends_parent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trends_parent_id'"
