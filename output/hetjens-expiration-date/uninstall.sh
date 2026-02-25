#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'Hetjens_Expiration_Date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expiration_date'"
