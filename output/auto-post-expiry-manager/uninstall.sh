#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'apem_check_expiry_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_notify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_notify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_notify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_notify'"
