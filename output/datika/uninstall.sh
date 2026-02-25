#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'datika_exchange_rates'
wp option delete 'datika_fixer_api_key'

# Clear Cron Jobs
wp cron event delete 'datika_fetch_exchange_rates'

