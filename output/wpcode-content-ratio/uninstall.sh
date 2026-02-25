#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcode_options'
wp option delete 'wpcode_tags_ratio'
wp option delete 'wpcode_categories_ratio'
wp option delete 'wpcode_author_ratio'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ratio'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratio'"
