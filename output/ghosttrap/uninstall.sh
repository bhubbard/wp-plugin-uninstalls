#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghosttrap_settings'
wp option delete 'ghosttrap_stats'
wp option delete 'ghosttrap_install_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghosttrap_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghosttrap_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghosttrap_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghosttrap_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghosttrap_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghosttrap_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghosttrap_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghosttrap_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghosttrap_donation_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghosttrap_donation_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghosttrap_donation_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghosttrap_donation_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghosttrap_positive_review_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghosttrap_positive_review_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghosttrap_positive_review_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghosttrap_positive_review_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghosttrap_info_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghosttrap_info_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghosttrap_info_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghosttrap_info_visibility'"
