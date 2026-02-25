#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_stripe_authenticated_routes'
wp option delete 'wc_stripe_connect_notice'
wp option delete 'woocommerce_stripe_email_receipt'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_stripe_plaid_settings'
wp option delete 'woocommerce_stripe_ach_settings'
wp option delete 'woocommerce_de_secondcheckout'
wp option delete 'woocommerce_gateway_order'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stripe_lock_order_%' OR option_name LIKE '_site_transient_stripe_lock_order_%'"

