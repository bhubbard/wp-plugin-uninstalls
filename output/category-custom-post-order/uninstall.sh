#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posts_order'
wp option delete 'posts_order_upgrade'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_sort_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_sort_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_sort_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sort_%'"
