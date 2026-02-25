#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'botsailor_abandoned_cart_webhook_url'

# Clear Cron Jobs
wp cron event delete 'botsailor_check_abandoned_carts'

