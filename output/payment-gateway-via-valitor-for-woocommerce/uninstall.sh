#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_valitor_settings'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_hold_stock_minutes'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_processing' OR option_name LIKE '_site_transient_%_processing'"

