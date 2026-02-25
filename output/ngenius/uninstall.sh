#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ngenius_settings'

# Clear Cron Jobs
wp cron event delete 'network_international_ngenius_cron_order_update'

