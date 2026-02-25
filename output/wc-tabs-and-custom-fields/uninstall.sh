#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EWD_WCTCF_Custom_Fields'
wp option delete 'EWD_WCTCF_Use_Product'
wp option delete 'EWD_WCTCF_Custom_CSS'
wp option delete 'plugin_error'
wp option delete 'EWD_WCTCF_Full_Version'
wp option delete 'EWD_WCTCF_Install_Flag'
wp option delete 'EWD_WCTCF_Version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wctcf_tab_visbility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wctcf_tab_visbility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wctcf_tab_visbility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wctcf_tab_visbility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'EWD_WCTCF_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'EWD_WCTCF_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'EWD_WCTCF_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'EWD_WCTCF_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_Toggle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_Toggle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_Toggle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_Toggle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_WCTCF_Tab_Order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_WCTCF_Tab_Order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_WCTCF_Tab_Order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_WCTCF_Tab_Order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EWD_WCTCF_Tab_Callback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EWD_WCTCF_Tab_Callback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EWD_WCTCF_Tab_Callback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EWD_WCTCF_Tab_Callback'"
