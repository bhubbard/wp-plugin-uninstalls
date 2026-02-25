#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwcc_settings'
wp option delete 'cwcc_settings_cart'
wp option delete 'woocommerce_tax_total_display'

