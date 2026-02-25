#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_rman_user_setting'
wp option delete 'mgo_entire_options'
wp option delete 'wp_rmanpro_user_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_linkurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_linkurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_linkurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_linkurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_detailurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_detailurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_detailurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_detailurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_rate'"
