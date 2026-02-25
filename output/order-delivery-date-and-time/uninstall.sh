#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pickup_location_settings'
wp option delete 'active_sitewide_plugins'

