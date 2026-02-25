#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posts_per_page_of_tax_category'
wp option delete 'posts_per_page_of_tax_post_tag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'posts_per_page_of_cpt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'posts_per_page_of_tax_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
