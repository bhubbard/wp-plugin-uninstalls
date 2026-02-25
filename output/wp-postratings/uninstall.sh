#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postratings_image'
wp option delete 'postratings_max'
wp option delete 'postratings_template_vote'
wp option delete 'postratings_template_text'
wp option delete 'postratings_template_none'
wp option delete 'postratings_logging_method'
wp option delete 'postratings_allowtorate'
wp option delete 'postratings_ratingstext'
wp option delete 'postratings_template_highestrated'
wp option delete 'postratings_ajax_style'
wp option delete 'postratings_ratingsvalue'
wp option delete 'postratings_customrating'
wp option delete 'postratings_template_permission'
wp option delete 'postratings_template_mostrated'
wp option delete 'widget_ratings_highest_rated'
wp option delete 'widget_ratings_most_rated'
wp option delete 'postratings_options'
wp option delete 'stats_display'
wp option delete 'stats_mostlimit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings_average'"
