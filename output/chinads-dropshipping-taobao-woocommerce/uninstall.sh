#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbds_temp_api_credentials'
wp option delete 'tbds_migrated_to_new_table'
wp option delete 'tbds_params'
wp option delete 'tbds_deleted_old_posts_data'
wp option delete 'tbds_setup_wizard'
wp option delete 'default_product_cat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_complete' OR option_name LIKE '_site_transient_%_complete'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'wc_featured_products'
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Clear Cron Jobs
wp cron event delete 'publish_future_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbds_migrated_to_new_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbds_migrated_to_new_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbds_migrated_to_new_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbds_migrated_to_new_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbds_taobao_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbds_taobao_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbds_taobao_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbds_taobao_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbds_taobao_product_host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbds_taobao_product_host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbds_taobao_product_host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbds_taobao_product_host'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbds_taobao_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbds_taobao_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbds_taobao_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbds_taobao_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbds_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbds_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbds_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbds_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbds_taobao_host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbds_taobao_host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbds_taobao_host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbds_taobao_host'"
