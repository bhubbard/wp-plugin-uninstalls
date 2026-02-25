#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openboxdeal_cache_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openboxdeal_main_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openboxdeal_main_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openboxdeal_main_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openboxdeal_main_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openboxdeal_main_product_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openboxdeal_main_product_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openboxdeal_main_product_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openboxdeal_main_product_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
