#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'strcsvexp_settings'
wp option delete 'strcsvexp_stripe_options'

# Clear Cron Jobs
wp cron event delete 'strcsvexp_daily_check'

