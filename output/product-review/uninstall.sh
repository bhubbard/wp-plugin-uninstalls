#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbpr_activated'
wp option delete 'cbpr_survey'
wp option delete 'cbpr_survey_agreed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%.php'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbpr_user_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbpr_user_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbpr_user_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbpr_user_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbpr_rating_pros'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbpr_rating_pros'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbpr_rating_pros'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbpr_rating_pros'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbpr_rating_cons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbpr_rating_cons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbpr_rating_cons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbpr_rating_cons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbpr_rating_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbpr_rating_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbpr_rating_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbpr_rating_features'"
