#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frame'
wp option delete 'border'
wp option delete 'wishlist_page'
wp option delete 'wish'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%autoresize'"
wp option delete 'cat_list'
wp option delete 'count_frame'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backgroung_choose'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backgroung'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backgroung_image_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backgroung_image_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_add_to_wish_but'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_arrow_prev'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_arrow_next'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width_wish'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height_wish'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_isTitle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_isPrice'"
wp option delete 'cover'
wp option delete 'register'

# Delete Transients
wp transient delete 'wpcat_functionnal_return_result'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'numbpage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'numbpage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'numbpage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'numbpage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_catalog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_catalog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_catalog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_catalog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wishlist'"
