#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'taro_series_post_types'
wp option delete 'rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_series_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_series_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_series_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_series_%'"
