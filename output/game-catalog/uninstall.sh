#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gc_price_format'
wp option delete 'gc_description_length'
wp option delete 'gc_news_days'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
