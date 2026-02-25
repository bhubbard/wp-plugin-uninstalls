#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cryptapi_coins_cache'

# Delete Transients
wp transient delete 'cryptapi_pubkey'

# Clear Cron Jobs
wp cron event delete 'cryptapi_cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
