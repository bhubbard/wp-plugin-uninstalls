#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcis_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcis_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcis_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcis_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcis_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcis_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcis_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcis_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcis_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcis_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcis_swap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcis_swap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcis_swap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcis_swap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcis_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcis_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcis_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcis_slider'"
