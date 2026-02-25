#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'mpl_msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_author_column_publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_author_column_publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_author_column_publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_author_column_publisher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_category_column_publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_category_column_publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_category_column_publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_category_column_publisher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_tags_column_publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_tags_column_publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_tags_column_publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_tags_column_publisher'"
