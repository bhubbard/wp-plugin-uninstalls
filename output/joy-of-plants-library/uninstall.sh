#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'joyofplants_api_username'
wp option delete 'joyofplants_api_password'
wp option delete 'joyofplants_api_clientid'
wp option delete 'joyofplants_api_clientsecret'
wp option delete 'joyofplants_api_accesstoken'
wp option delete 'joyofplants_api_accesstoken_expire'
wp option delete 'joyofplants_dummy_image'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'joyofplants_export_index'
wp option delete 'joyofplants_export_date'
wp option delete 'joyofplants_plantfinder_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jop_product_pid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jop_product_pid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jop_product_pid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jop_product_pid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jop_product_image_l'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jop_product_image_l'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jop_product_image_l'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jop_product_image_l'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jop_product_image_m'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jop_product_image_m'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jop_product_image_m'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jop_product_image_m'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jop_product_image_s'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jop_product_image_s'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jop_product_image_s'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jop_product_image_s'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jop_product_image_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jop_product_image_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jop_product_image_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jop_product_image_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jop_product_image_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jop_product_image_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jop_product_image_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jop_product_image_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jop_product_image_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jop_product_image_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jop_product_image_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jop_product_image_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jop_product_display_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jop_product_display_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jop_product_display_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jop_product_display_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jop_product_display_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jop_product_display_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jop_product_display_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jop_product_display_text'"
