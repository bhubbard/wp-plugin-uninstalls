#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dk_spx_old_order_status_converted'
wp option delete 'dk_spx_convert_old_order_status'
wp option delete 'dk_spx_callback_key_send'
wp option delete 'woocommerce_sparxpres_settings'
wp option delete 'woocommerce_xprespay_settings'

