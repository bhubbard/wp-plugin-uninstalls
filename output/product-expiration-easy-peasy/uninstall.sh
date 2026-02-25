#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'peep_check_expired_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
