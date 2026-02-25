#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'book_reviews_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'book_in_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'book_in_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'book_in_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'book_in_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'award_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'award_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'award_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'award_image'"
