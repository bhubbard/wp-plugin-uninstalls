#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp option delete 'c4d_woo_vs_attributes'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c4d_woo_vs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c4d_woo_vs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c4d_woo_vs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c4d_woo_vs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c4d_woo_vs_product_image_gallery_values'"
