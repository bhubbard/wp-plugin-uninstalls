#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'realhomes_currencies_last_update'
wp option delete 'rcs_settings'
wp option delete 'realhomes_currencies_rates'
wp option delete 'realhomes_currencies_data'
wp option delete 'theme_currency_sign'

# Clear Cron Jobs
wp cron event delete 'realhomes_update_currencies'

