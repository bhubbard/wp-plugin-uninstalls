#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'events_listing_fix_featured'
wp option delete 'events_listing_Options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'events_listing_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'events_listing_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'events_listing_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'events_listing_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'events_listing_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'events_listing_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'events_listing_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'events_listing_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'events_listing_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'events_listing_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'events_listing_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'events_listing_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'events_listing_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'events_listing_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'events_listing_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'events_listing_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'book_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'book_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'book_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'book_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'book_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'book_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'book_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'book_rating'"
