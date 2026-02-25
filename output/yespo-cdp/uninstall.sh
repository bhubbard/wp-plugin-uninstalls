#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yespo_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp option delete 'woocommerce_db_sync_enabled'
wp option delete 'yespo-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide'"

# Delete Transients
wp transient delete 'yespo_user_event_triggered'
wp transient delete 'yespo_add_to_cart_event_triggered'
wp transient delete 'yespo_update_cart_event_triggered'

# Clear Cron Jobs
wp cron event delete 'yespo_export_data_cron'
wp cron event delete 'yespo_script_cron_event'
wp cron event delete 'yespo_remove_old_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
