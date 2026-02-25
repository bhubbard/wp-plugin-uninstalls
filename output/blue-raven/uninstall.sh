#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blue_raven_activated'
wp option delete 'blue_raven_remove_all_data'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'blue_raven_wc_product_slug_redirects'
wp option delete 'blueraven_products_db_version'
wp option delete 'blueraven_messages_db_version'

# Clear Cron Jobs
wp cron event delete 'blue_raven_daily_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blue_raven_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blue_raven_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blue_raven_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blue_raven_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blue_raven_meta_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blue_raven_meta_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blue_raven_meta_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blue_raven_meta_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blue_raven_already_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blue_raven_already_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blue_raven_already_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blue_raven_already_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blue_raven_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blue_raven_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blue_raven_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blue_raven_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
