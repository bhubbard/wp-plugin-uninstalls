#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_prices_include_tax'

