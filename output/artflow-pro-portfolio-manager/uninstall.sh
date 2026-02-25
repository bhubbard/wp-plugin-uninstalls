#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'artfprpo_logo_attachment_id'
wp option delete 'artfprpo_delete_on_uninstall'
wp option delete 'artfprpo_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_show_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_show_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_show_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_show_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_show_series'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_show_series'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_show_series'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_show_series'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_show_material'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_show_material'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_show_material'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_show_material'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_show_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_show_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_show_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_show_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_api_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_api_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_api_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_api_url'"
