#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcvt_settings'
wp option delete 'wpcvt_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcvt_%'"
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcvt_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcvt_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcvt_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcvt_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvt_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvt_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvt_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvt_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvt_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvt_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvt_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvt_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvt_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvt_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvt_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvt_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcvt_dropdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcvt_dropdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcvt_dropdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcvt_dropdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvi_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvi_images'"
