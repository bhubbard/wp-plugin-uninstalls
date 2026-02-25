#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lh_recover_password-options'

# Clear Cron Jobs
wp cron event delete 'lh_recover_password-sendemail'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lh_recover_password-flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lh_recover_password-flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lh_recover_password-flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lh_recover_password-flag'"
