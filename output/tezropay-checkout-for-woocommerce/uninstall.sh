#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tezropay_checkout_gateway_settings'
wp option delete 'tezropay_wc_checkout_db1'
wp option delete 'woocommerce_checkout_page_id'

