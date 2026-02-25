#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sortable_posts'
wp option delete 'sortable_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_order'"
