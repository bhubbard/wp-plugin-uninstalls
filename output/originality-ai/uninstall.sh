#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'originalityai_admin_notice_error'
wp transient delete 'originalityai_admin_notice_success'

# Clear Cron Jobs
wp cron event delete 'ai_scan_batch_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_originalityai_scan_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_originalityai_scan_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_originalityai_scan_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_originalityai_scan_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_originalityai_scan_batch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_originalityai_scan_batch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_originalityai_scan_batch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_originalityai_scan_batch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_originalityai_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_originalityai_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_originalityai_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_originalityai_logo'"
