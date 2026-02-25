#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bs_products_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bs_products_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bs_products_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bs_products_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bs_products_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bs_products_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bs_products_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bs_products_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bs_products_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bs_products_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bs_products_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bs_products_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bs_products_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bs_products_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bs_products_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bs_products_brand'"
