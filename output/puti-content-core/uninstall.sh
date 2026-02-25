#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'puticoco_options'
wp option delete 'puticoco_flush_rewrites'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'article_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'article_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'article_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'article_code'"
