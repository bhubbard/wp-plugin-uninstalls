#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgrade_metaboxes_prefix'
wp option delete 'wpgrade_shortcodes_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%author_function'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%author_function'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%author_function'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%author_function'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%author_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%author_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%author_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%author_link'"
