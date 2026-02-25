#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'on_home'
wp option delete 'on_archives'
wp option delete 'on_feeds'
wp option delete 'include_cat'
wp option delete 'exclude_cat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exc_cats_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exc_cats_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exc_cats_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exc_cats_list'"
