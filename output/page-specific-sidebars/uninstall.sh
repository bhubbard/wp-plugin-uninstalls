#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'page_sidebar_home_id'
wp option delete 'page_sidebar_widget_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add2sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add2sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add2sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add2sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prepend_to_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prepend_to_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prepend_to_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prepend_to_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_sidebar_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_sidebar_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_sidebar_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_sidebar_group'"
