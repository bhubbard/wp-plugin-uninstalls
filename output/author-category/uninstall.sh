#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'author_cat_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_author_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_author_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_author_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_author_cat'"
