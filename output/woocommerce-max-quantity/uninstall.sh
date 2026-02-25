#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'isa_woocommerce_max_qty_limit'
wp option delete 'direct_checkout_enabled'
wp option delete 'direct_checkout_cart_redirect_url'

