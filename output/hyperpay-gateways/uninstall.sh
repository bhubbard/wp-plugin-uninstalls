#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hyperpay_payments_logs'
wp option delete 'hyperpay_payments_available_gateways'

# Clear Cron Jobs
wp cron event delete 'hyperpay_remove_expired_logs'

