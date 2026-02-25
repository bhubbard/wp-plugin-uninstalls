#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awocoupon_version'
wp option delete 'awocoupon_db_version'
wp option delete 'woocommerce_currency'

# Clear Cron Jobs
wp cron event delete 'awocoupon_cron_action'

