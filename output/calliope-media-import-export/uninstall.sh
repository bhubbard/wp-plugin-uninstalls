#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'eim_daily_cleanup_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eim_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eim_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eim_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eim_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eim_file_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eim_file_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eim_file_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eim_file_hash'"
