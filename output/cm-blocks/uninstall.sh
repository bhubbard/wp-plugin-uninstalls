#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmblocks_plugin_activated'
wp option delete 'cm_blocks_favorite_patterns_table_created'
wp option delete 'cm_blocks_visibility_media_sizes'
wp option delete '__cm_blocks_media_migration'
wp option delete '	site_logo'
wp option delete 'site_logo'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '__cm_blocks_import_%'"
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'cm_blocks_license_data'
wp option delete '_cm_blocks_plugin_id'

# Clear Cron Jobs
wp cron event delete 'cm_license_check_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmblocks_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmblocks_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmblocks_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmblocks_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmblocks_imported_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmblocks_imported_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmblocks_imported_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmblocks_imported_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cm_blocks_setting_header_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cm_blocks_setting_header_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cm_blocks_setting_header_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cm_blocks_setting_header_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cm_blocks_setting_header_sticky__settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cm_blocks_setting_header_sticky__settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cm_blocks_setting_header_sticky__settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cm_blocks_setting_header_sticky__settings'"
