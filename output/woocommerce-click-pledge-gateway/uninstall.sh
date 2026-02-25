#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_clickandpledge_paymentsettings'
wp option delete 'woocommerce_clickandpledge_recurring'
wp option delete 'woocommerce_clickandpledge_additionalfee'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_clickandpledge_zeropaymentsettings'
wp option delete 'woocommerce_clickandpledge_acceptedcreditcards'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_currency'

