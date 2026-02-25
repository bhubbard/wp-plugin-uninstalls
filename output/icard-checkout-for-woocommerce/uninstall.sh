#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_icard_checkout_woocommerce_integration_settings'
wp option delete 'icard_checkout_woocommerce_integration_settings'

# Delete Transients
wp transient delete 'icard_installing'
wp transient delete 'icard_checkout_woocommerce_cancelled_order'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_icard_checkout_woocommerce_payment_declined_%' OR option_name LIKE '_site_transient_icard_checkout_woocommerce_payment_declined_%'"
wp transient delete 'icard_cancelled_order'

