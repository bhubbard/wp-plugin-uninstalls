#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'knbu_plugin_version'
wp option delete 'knbu_categories'
wp option delete 'knbu_db_version'
wp option delete 'knbu_main_title_required'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'knbu_map_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'knbu_map_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'knbu_map_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'knbu_map_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'knbu_map_comment_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'knbu_map_comment_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'knbu_map_comment_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'knbu_map_comment_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'node_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'node_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'node_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'node_position'"
