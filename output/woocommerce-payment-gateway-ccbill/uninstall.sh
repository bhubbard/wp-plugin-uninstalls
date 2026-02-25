#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_gateway_ccbill_settings'
wp option delete 'wc_gateway_ccbill_settings'

