#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SPP_CRON'

# Clear Cron Jobs
wp cron event delete 'sp_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_rubrique'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_rubrique'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_rubrique'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_rubrique'"
