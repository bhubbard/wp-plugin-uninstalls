#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_paygate_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_PAYGATE_PAYWEB_RED_%' OR option_name LIKE '_site_transient_PAYGATE_PAYWEB_RED_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_PAYGATE_PAYWEB_IPN_%' OR option_name LIKE '_site_transient_PAYGATE_PAYWEB_IPN_%'"

# Clear Cron Jobs
wp cron event delete 'paygate_query_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paygate_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paygate_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paygate_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paygate_error'"
