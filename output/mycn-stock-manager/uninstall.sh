#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'msm_hiddenstatus_option_mycn'
wp option delete 'msm_enabled_option_mycn'
wp option delete 'msm_username_option_mycn'
wp option delete 'msm_password_option_mycn'
wp option delete 'msm_myplugin_section2_settings'
wp option delete 'msm_china_option_mycn'
wp option delete 'msm_saudi_option_mycn'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'room'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'room'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'room'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'room'"
