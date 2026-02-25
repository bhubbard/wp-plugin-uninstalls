#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'i4t3_gnrl_options'
wp option delete 'i4t3_version_no'
wp option delete 'i4t3_review_notice'
wp option delete 'i4t3_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'i4t3_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'i4t3_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'i4t3_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'i4t3_review_notice_dismissed'"
