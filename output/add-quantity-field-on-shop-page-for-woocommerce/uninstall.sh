#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_variation_swatches'
wp option delete 'aqf_variation_price_plugin_notice'

# Delete Transients
wp transient delete 'aqf_variation_price_plugin_notice'

