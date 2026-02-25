#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ryviu_user_settings'
wp option delete 'ryviu_frr_status'
wp option delete 'ryviu_settings_reviews'
wp option delete 'ryviu_client_settings'
wp option delete 'ryviu_version'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'featured_ryviu_data'
wp option delete 'woocommerce_permalinks'
wp option delete 'ryviu_request'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ryviu_product_reviews_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ryviu_product_reviews_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ryviu_product_reviews_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ryviu_product_reviews_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_r_avg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_r_avg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_r_avg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_r_avg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_r_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_r_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_r_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_r_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
