#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcvs_settings'
wp option delete 'wpcvs_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcvs_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcvs_show_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcvs_groups_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvs_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvs_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvs_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvs_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvs_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvs_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvs_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvs_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvs_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvs_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvs_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvs_tooltip'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcvs_radio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcvs_radio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcvs_radio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcvs_radio'"
