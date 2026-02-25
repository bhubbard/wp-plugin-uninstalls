#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_yottapay_settings'

