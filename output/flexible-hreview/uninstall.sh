#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fhr_categories'
wp option delete 'fhr_rating_max'
wp option delete 'fhr_use_average'
wp option delete 'fhr_use_average_label'
wp option delete 'fhr_use_average_text'
wp option delete 'fhr_before_rating_text'
wp option delete 'fhr_after_rating_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hreview_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hreview_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hreview_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hreview_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hreview_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hreview_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hreview_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hreview_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hreview_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hreview_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hreview_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hreview_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restaurant_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restaurant_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restaurant_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restaurant_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hreview_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hreview_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hreview_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hreview_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restaurant_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restaurant_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restaurant_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restaurant_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hreview_rating_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hreview_rating_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hreview_rating_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hreview_rating_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_commentary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_commentary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_commentary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_commentary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_max'"
