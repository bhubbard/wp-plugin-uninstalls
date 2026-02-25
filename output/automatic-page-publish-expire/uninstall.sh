#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'expirationdate_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiration-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiration-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiration-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiration-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiration-date-start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiration-date-start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiration-date-start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiration-date-start'"
