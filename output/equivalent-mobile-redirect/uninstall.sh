#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ndg_spr_version'
wp option delete 'rooter2484_theme_options'
wp option delete 'emr_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ndg_Speedy_Page_Redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ndg_Speedy_Page_Redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ndg_Speedy_Page_Redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ndg_Speedy_Page_Redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ndg_speedy_page_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ndg_speedy_page_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ndg_speedy_page_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ndg_speedy_page_redirect'"
