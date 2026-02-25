#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freight_shipping_quote_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_display_cart'

