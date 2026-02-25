#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sanctumgate_delete_on_uninstall'
wp option delete 'sanctumgate_usage_stats'
wp option delete 'sac_allowed_pages'
wp option delete 'sac_allowed_categories'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sanctumgate_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sanctumgate_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sanctumgate_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sanctumgate_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sanctumgate_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sanctumgate_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sanctumgate_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sanctumgate_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sanctumgate_donation_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sanctumgate_donation_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sanctumgate_donation_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sanctumgate_donation_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sanctumgate_positive_review_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sanctumgate_positive_review_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sanctumgate_positive_review_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sanctumgate_positive_review_action'"
