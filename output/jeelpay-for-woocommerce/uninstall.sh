#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_jeelpay_settings'
wp option delete 'jeelpay_activated_at'

# Clear Cron Jobs
wp cron event delete 'jeelpay_cancel_unpaid_orders'

