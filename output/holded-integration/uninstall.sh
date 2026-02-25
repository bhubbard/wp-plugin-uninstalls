#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'holded_api_key'
wp option delete 'holded_api_url'
wp option delete 'holdedwc_sync'
wp option delete 'woocommerce_holdedwc-configpanel_settings'

# Delete Transients
wp transient delete 'holded_log'

