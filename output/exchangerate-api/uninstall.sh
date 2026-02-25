#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_key'
wp option delete 'base_currency'
wp option delete 'schedule_time'
wp option delete 'exchange_rate_quota'

# Clear Cron Jobs
wp cron event delete 'exchange_rate_api_update_currency_rates'

