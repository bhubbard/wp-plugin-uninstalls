#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ktmp_brand_term'
wp option delete 'ktmp_brand_options'
wp option delete 'ktmp_brand_from'
wp option delete 'ktmp_fixed_brand'
wp option delete 'ktmp_in_stock_value'

# Clear Cron Jobs
wp cron event delete 'ktmp_delete_old_logs_action'
wp cron event delete 'ktmp_delete_tmp_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ktmp_edited_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ktmp_edited_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ktmp_edited_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ktmp_edited_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ktmp_marketplace_image_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ktmp_marketplace_image_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ktmp_marketplace_image_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ktmp_marketplace_image_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ktmp_variation_group_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ktmp_variation_group_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ktmp_variation_group_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ktmp_variation_group_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
