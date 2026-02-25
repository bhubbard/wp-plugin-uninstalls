#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'active_sitewide_plugins'

