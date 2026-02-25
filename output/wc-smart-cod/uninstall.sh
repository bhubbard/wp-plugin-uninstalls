#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cod_settings'

# Delete Transients
wp transient delete 'wc-smart-cod-activated'
wp transient delete 'wsc-notice-dismissed'
wp transient delete 'wc-smart-cod-notifications'
wp transient delete 'wc-smart-cod-settings'

