#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'currencyr_db_version'
wp option delete 'currencyr_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_currency'
wp option delete 'currency_type'
wp option delete 'edd_settings_general'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_updated' OR option_name LIKE '_site_transient_%_updated'"

# Clear Cron Jobs
wp cron event delete 'currencyr_update_rates'

