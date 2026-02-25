#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipping_debug_mode'
wp option delete 'active_sitewide_plugins'

