#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_customer_address'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_geoip_%' OR option_name LIKE '_site_transient_geoip_%'"

# Clear Cron Jobs
wp cron event delete 'woocommerce_geoip_updater'

