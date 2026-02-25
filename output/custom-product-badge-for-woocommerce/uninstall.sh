#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpbw_settings'
wp option delete 'cpbw_version'
wp option delete 'store_manager_version'
wp option delete 'cpbw_install_time'
wp option delete 'cpbw_consent_given'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpbw_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpbw_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpbw_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpbw_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpbw_promotional_notice_november_2025'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpbw_promotional_notice_november_2025'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpbw_promotional_notice_november_2025'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpbw_promotional_notice_november_2025'"
