#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc_batch_overwrite'
wp option delete 'cc_start'
wp option delete 'cc_end'
wp option delete 'cc_batch_share'
wp option delete 'cc_batch_mod'
wp option delete 'mc_cc_default_com_setting_name'
wp option delete 'mc_cc_default_mod_setting_name'
wp option delete 'mc_cc_search_setting_name'
wp option delete 'mc_cc_area_setting_name'
wp option delete 'mc_cc_image_setting_name'
wp option delete 'mc_cc_link_setting_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_cc_default_mod_setting_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_cc_default_mod_setting_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_cc_default_mod_setting_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_cc_default_mod_setting_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_cc_default_com_setting_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_cc_default_com_setting_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_cc_default_com_setting_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_cc_default_com_setting_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_cc_default_com_setting_name_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_cc_default_com_setting_name_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_cc_default_com_setting_name_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_cc_default_com_setting_name_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_cc_default_mod_setting_name_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_cc_default_mod_setting_name_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_cc_default_mod_setting_name_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_cc_default_mod_setting_name_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_cc_full_setting_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_cc_full_setting_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_cc_full_setting_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_cc_full_setting_name'"
