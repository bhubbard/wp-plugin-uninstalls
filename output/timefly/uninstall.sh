#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timefly_uninstall_behavior'
wp option delete 'timefly_scan_post_types'
wp option delete 'timefly_usage_stats'
wp option delete 'timefly_install_date'

# Delete Transients
wp transient delete 'timefly_settings_saved'
wp transient delete 'timefly_block_scan_results'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timefly_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timefly_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timefly_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timefly_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timefly_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timefly_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timefly_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timefly_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timefly_donation_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timefly_donation_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timefly_donation_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timefly_donation_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timefly_positive_review_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timefly_positive_review_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timefly_positive_review_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timefly_positive_review_action'"
