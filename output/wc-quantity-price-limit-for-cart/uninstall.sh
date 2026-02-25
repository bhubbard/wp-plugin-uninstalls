#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qplc_quantity_price_limit_product_limits'
wp option delete 'qplc_quantity_price_limit_cart_limits'

