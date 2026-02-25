#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themify_store_base_slug'
wp option delete 'single_image_size_w'
wp option delete 'single_image_size_h'
wp option delete 'archive_image_size_w'
wp option delete 'archive_image_size_h'
wp option delete 'themify_sl_map_api'
wp option delete 'themify_store_locator_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themify_saved_%'"
wp option delete 'themify_saved_colors'
wp option delete 'themify_saved_gradients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themify_storelocator_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themify_storelocator_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themify_storelocator_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themify_storelocator_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themify_storelocator_numbers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themify_storelocator_numbers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themify_storelocator_numbers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themify_storelocator_numbers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themify_storelocator_timing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themify_storelocator_timing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themify_storelocator_timing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themify_storelocator_timing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_show'"
