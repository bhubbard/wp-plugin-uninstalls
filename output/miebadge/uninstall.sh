#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'miebadge_settings'
wp option delete 'miebadge_install_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'miebadge_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'miebadge_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'miebadge_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'miebadge_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'miebadge_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'miebadge_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'miebadge_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'miebadge_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'miebadge_donation_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'miebadge_donation_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'miebadge_donation_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'miebadge_donation_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'miebadge_positive_review_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'miebadge_positive_review_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'miebadge_positive_review_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'miebadge_positive_review_action'"
