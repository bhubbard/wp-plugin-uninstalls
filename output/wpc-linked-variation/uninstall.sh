#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpclv_settings'
wp option delete 'wpclv_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpclv_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpclv_linked_products_%' OR option_name LIKE '_site_transient_wpclv_linked_products_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpclv_linked_data_%' OR option_name LIKE '_site_transient_wpclv_linked_data_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpclv_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpclv_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpclv_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpclv_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvs_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvs_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvs_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvs_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvs_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvs_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvs_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvs_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvs_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvs_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvs_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvs_image'"
