#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mightyforms_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf_next_schedule_review_notice_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf_next_schedule_review_notice_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf_next_schedule_review_notice_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf_next_schedule_review_notice_time'"
