#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'truvisibility_plagiarism_usage'
wp option delete 'truvisibility_plagiarism_account'

# Clear Cron Jobs
wp cron event delete 'truvisibility_plagiarism_check_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'truvisibility_plagiarism_post_checked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'truvisibility_plagiarism_post_checked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'truvisibility_plagiarism_post_checked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'truvisibility_plagiarism_post_checked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'truvisibility_plagiarism_post_uniqueness'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'truvisibility_plagiarism_post_uniqueness'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'truvisibility_plagiarism_post_uniqueness'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'truvisibility_plagiarism_post_uniqueness'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'truvisibility_plagiarism_publish_anyway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'truvisibility_plagiarism_publish_anyway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'truvisibility_plagiarism_publish_anyway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'truvisibility_plagiarism_publish_anyway'"
