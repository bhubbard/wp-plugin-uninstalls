#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ac_catalog_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ac_main_product_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ac_main_product_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ac_main_product_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ac_main_product_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_attachment_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_attachment_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_attachment_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_attachment_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ac_additional_product_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ac_additional_product_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ac_additional_product_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ac_additional_product_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac-product-details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac-product-details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac-product-details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac-product-details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
