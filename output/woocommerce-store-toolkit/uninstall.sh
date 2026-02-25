#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unlock_related_orders'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_in_progress'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_autocomplete_order'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unlock_variations'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_used_coupons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_change_add_to_cart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_change_add_to_cart_0'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_add_empty_cart_button'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_adjust_number_products_on_archive'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_adjust_number_products_on_archive_0'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delete_images_on_product_delete'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_place_order_button'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_place_order_button_0'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_unit_pricing'"
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp option delete 'uncannyautomator_source'
wp option delete 'storeagent_installed_by'
wp option delete 'wwp_installed_by'
wp option delete 'acfw_installed_by'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notice' OR option_name LIKE '_site_transient_%_notice'"
wp transient delete 'wc_featured_products'
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_st_unit_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_st_unit_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_st_unit_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_st_unit_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_st_total_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_st_total_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_st_total_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_st_total_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
