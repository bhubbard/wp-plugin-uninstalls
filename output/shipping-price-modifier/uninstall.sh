#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynowp_shipping_price_modifier_options'
wp option delete 'woocommerce_currency_pos'

