#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_konnect_gateway_settings'
wp option delete 'woocommerce_checkout_page_id'

