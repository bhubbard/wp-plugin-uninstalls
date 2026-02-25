#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'cs_modifiable'
wp option delete 'cs_sidebars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_sidebars_explain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_sidebars_explain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_sidebars_explain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_sidebars_explain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmudev_sc_dismissed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmudev_sc_dismissed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmudev_sc_dismissed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmudev_sc_dismissed_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cs_replacements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cs_replacements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cs_replacements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cs_replacements'"
