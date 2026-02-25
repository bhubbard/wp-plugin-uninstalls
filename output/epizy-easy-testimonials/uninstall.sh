#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpetp_display'
wp option delete 'wpetp_auto'
wp option delete 'wpetp_navigation'
wp option delete 'wpetp_plugin_do_activation_redirect'
wp option delete 'color_theme'
wp option delete 'hover_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testi_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testi_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testi_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testi_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testi_desig'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testi_desig'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testi_desig'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testi_desig'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testi_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testi_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testi_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testi_rating'"
