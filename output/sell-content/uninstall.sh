#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oronjo_license_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_oronjoapikey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cat_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_updated_only'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_use_image_tag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_use_images'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_number_of_items'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cart_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cart_top_margin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_valid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oronjo_lic_check_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oronjo_lic_msg_%'"
wp option delete 'oronjo_license_checked'
wp option delete 'oronjo_license'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product._id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product._id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product._id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product._id'"
