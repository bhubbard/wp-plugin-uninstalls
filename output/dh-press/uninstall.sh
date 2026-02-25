#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dhp_plugin_version'
wp option delete 'tip_url'
wp option delete 'timeout_duration'
wp option delete 'redirect_url'
wp option delete 'kiosk_useragent'
wp option delete 'kiosk_blockurls'
wp option delete 'scripts_whitelist'
wp option delete 'styles_whitelist'
wp option delete 'kiosk_launch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhp_map_s_bounds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhp_map_s_bounds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhp_map_s_bounds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhp_map_s_bounds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhp_map_w_bounds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhp_map_w_bounds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhp_map_w_bounds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhp_map_w_bounds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhp_map_n_bounds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhp_map_n_bounds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhp_map_n_bounds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhp_map_n_bounds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhp_map_e_bounds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhp_map_e_bounds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhp_map_e_bounds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhp_map_e_bounds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhp_map_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhp_map_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhp_map_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhp_map_id'"
