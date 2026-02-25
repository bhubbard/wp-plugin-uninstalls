#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enabled_post_types'
wp option delete 'require_rating'
wp option delete 'avg_rating_display'
wp option delete 'stars_style'
wp option delete 'google_search_stars'
wp option delete 'google_search_stars_type'
wp option delete 'sr_negative_rating_alert'
wp option delete 'sr_negative_rating_threshold'
wp option delete 'sr_negative_rating_contact_url'
wp option delete ' avg_rating_display'
wp option delete ' enabled_post_types'
wp option delete ' google_search_stars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sr-comments-rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sr-comments-rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sr-comments-rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sr-comments-rating'"
