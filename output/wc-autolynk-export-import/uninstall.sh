#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woei_customer_tracking_note'
wp option delete 'woei_tracking_url'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_waei-import-file-%' OR option_name LIKE '_site_transient_waei-import-file-%'"

