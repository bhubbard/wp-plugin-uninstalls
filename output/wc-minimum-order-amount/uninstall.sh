#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_minimum_order_amount_value'
wp option delete 'wc_minimum_order_cart_notification'

