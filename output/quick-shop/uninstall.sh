#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickshop_currency'
wp option delete 'quickshop_symbol'
wp option delete 'quickshop_decimal'
wp option delete 'quickshop_thousands'
wp option delete 'quickshop_checkout_page'
wp option delete 'quickshop_display'
wp option delete 'quickshop_total'
wp option delete 'quickshop_logged'
wp option delete 'quickshop_freeshipv'
wp option delete 'quickshop_title'
wp option delete 'quickshop_tc'
wp option delete 'quickshop_payment_return_url'
wp option delete 'quickshop_email_enabled'
wp option delete 'quickshop_paypal_enabled'
wp option delete 'quickshop_paypal_email'
wp option delete 'quickshop_paypal_notify_url'
wp option delete 'quickshop_location'
wp option delete 'quickshop_products'
wp option delete 'quickshop_shipping_start'
wp option delete 'quickshop_shipping'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_qs_cart_%' OR option_name LIKE '_site_transient_qs_cart_%'"

