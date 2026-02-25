#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_emailchef_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_emailchef_%'"
wp option delete 'ecwc_last_run_version'

# Delete Transients
wp transient delete 'emailchef-admin-notice'
wp transient delete 'ecwc_authkey'
wp transient delete 'ecwc_lists'

# Clear Cron Jobs
wp cron event delete 'emailchef_abandoned_cart_sync'
wp cron event delete 'emailchef_sync_cron_now'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_last_active'"
