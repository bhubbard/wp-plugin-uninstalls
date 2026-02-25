#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lightsoff_setting_toggler'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lightsoff_setting_toggler'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lightsoff_setting_toggler'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lightsoff_setting_toggler'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lightsoff_setting_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lightsoff_setting_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lightsoff_setting_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lightsoff_setting_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lightsoff_setting_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lightsoff_setting_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lightsoff_setting_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lightsoff_setting_checkbox'"
