#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbttb_variation_price_plugin_notice'
wp option delete 'sbttb_settings'

# Delete Transients
wp transient delete 'sbttb_variation_price_plugin_notice'

