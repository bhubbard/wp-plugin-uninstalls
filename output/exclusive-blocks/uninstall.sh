#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exb_save_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete '__exb_asset_version'
wp option delete 'exb_do_update_redirect'
wp option delete 'exclusiveblocks'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'exclusiveblocks_dynamic_css_time'
wp option delete 'exclusiveblocks_dynamic_css_posts'
wp option delete 'widget_block'

# Clear Cron Jobs
wp cron event delete 'delete_block_library_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclusiveblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclusiveblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclusiveblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclusiveblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclusiveblocks_reusable_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclusiveblocks_reusable_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclusiveblocks_reusable_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclusiveblocks_reusable_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclusive_blocks_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclusive_blocks_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclusive_blocks_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclusive_blocks_image_hash'"
