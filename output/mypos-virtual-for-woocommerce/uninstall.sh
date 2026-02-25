#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mypos_virtual_settings'
wp option delete 'mypos_schema_missing_tables'
wp option delete 'woocommerce_checkout_page_id'

# Delete Transients
wp transient delete 'mypos_installing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mypos_update_order_%' OR option_name LIKE '_site_transient_mypos_update_order_%'"

# Clear Cron Jobs
wp cron event delete 'mypos_check_payment_status'

