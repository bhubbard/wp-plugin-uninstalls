#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpgal_global_options'
wp option delete 'rpgal_spare_me'
wp option delete 'rpgal_a08n_time'
wp option delete 'rpgal_custom_css'
wp option delete 'rpgal_plugin_version'
wp option delete 'rcpig_general'
wp option delete 'rcpig_advanced'
wp option delete 'rcpig_style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_button_ntab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_button_ntab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_button_ntab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_button_ntab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_multi_img_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_multi_img_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_multi_img_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_multi_img_array'"
