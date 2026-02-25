#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bulletproof_bpcheckout_lite_settings'

# Delete Transients
wp transient delete 'bulletproof_custom_gateway_api_error'
wp transient delete 'bulletproof_lite_gateway_api_refund_error'

