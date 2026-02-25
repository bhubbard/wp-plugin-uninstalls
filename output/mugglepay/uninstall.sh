#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mpwp_settings'

# Clear Cron Jobs
wp cron event delete 'mpwp_check_orders'

