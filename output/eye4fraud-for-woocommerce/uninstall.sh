#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_evereye_api_key'
wp option delete 'wc_settings_evereye_api_login'
wp option delete 'redirect_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable_cron'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_run_cron_every'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_limit_day'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_cancel_orders'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_changestatus_orders2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_skip_payment_method'"
wp option delete 'my_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
