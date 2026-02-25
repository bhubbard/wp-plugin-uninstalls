#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mswp_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mswp_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mswp_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mswp_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mswp_review_notice_permanent_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mswp_review_notice_permanent_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mswp_review_notice_permanent_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mswp_review_notice_permanent_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mswp_review_notice_first_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mswp_review_notice_first_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mswp_review_notice_first_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mswp_review_notice_first_seen'"
