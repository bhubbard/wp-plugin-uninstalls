#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vi_wad_temp_api_credentials'
wp option delete 'woo_orders_tracking_settings'
wp option delete 'vi_wad_create_table_of_error_product_images'
wp option delete 'ald_search_product_country'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'
wp option delete 'wooaliexpressdropship_params'
wp option delete 'ald_deleted_old_posts_data'
wp option delete 'ald_migrated_to_new_table'
wp option delete 'vi_wad_user_agent_list'
wp option delete 'vi_wad_last_used_user_agent'
wp option delete 'viwad_setup_wizard'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'vi_wad_background_download_images_complete'
wp transient delete 'vi_wad_background_import_product'
wp transient delete 'wc_featured_products'
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'wp_vi_wad_background_download_images_cron'
wp cron event delete 'publish_future_post'
wp cron event delete 'vi_wad_update_aff_urls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vi_wad_show_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vi_wad_show_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vi_wad_show_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vi_wad_show_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vi_wad_aliexpress_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vi_wad_aliexpress_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vi_wad_aliexpress_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vi_wad_aliexpress_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vi_wad_aliexpress_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vi_wad_aliexpress_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vi_wad_aliexpress_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vi_wad_aliexpress_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vi_wad_aliexpress_variation_attr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vi_wad_aliexpress_variation_attr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vi_wad_aliexpress_variation_attr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vi_wad_aliexpress_variation_attr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vi_wad_shipping_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vi_wad_shipping_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vi_wad_shipping_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vi_wad_shipping_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vi_wad_aliexpress_variation_ship_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vi_wad_aliexpress_variation_ship_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vi_wad_aliexpress_variation_ship_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vi_wad_aliexpress_variation_ship_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vi_wad_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vi_wad_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vi_wad_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vi_wad_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vi_wad_migrate_from_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vi_wad_migrate_from_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vi_wad_migrate_from_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vi_wad_migrate_from_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ald_migrated_to_new_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ald_migrated_to_new_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ald_migrated_to_new_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ald_migrated_to_new_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vi_wad_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vi_wad_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vi_wad_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vi_wad_image_id'"
