#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp_cats2wp_cats'
wp option delete 'postratings_max'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings_average'"
