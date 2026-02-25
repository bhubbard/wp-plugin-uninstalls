#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rssfp-meta-feed-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rssfp-meta-feed-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rssfp-meta-feed-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rssfp-meta-feed-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rssfp-meta-sort-by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rssfp-meta-sort-by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rssfp-meta-sort-by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rssfp-meta-sort-by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rfp_notice_clicked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rfp_notice_clicked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rfp_notice_clicked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rfp_notice_clicked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rfp_notice_last_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rfp_notice_last_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rfp_notice_last_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rfp_notice_last_time'"
