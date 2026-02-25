#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'woo_expiry_schedule_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_expiry_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_expiry_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_expiry_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_expiry_action'"
