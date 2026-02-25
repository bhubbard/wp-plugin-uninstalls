#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mc_setting_name'
wp option delete 'mc_iphone_setting_name'
wp option delete 'mc_feed_setting_name'
wp option delete 'mc_altcontent_setting_name'
wp option delete 'mc_params_setting_name'
wp option delete 'mc_flashver_setting_name'
wp option delete 'embed_size_w'
wp option delete 'embed_size_h'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_x'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_x'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_x'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_x'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_base'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_base'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_base'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_base'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_swfver'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_swfver'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_swfver'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_swfver'"
