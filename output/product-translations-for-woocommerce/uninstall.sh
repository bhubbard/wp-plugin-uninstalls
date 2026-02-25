#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'A2C_woocommerce_bridge_connector_is_custom'
wp option delete 'ptfw_bridge_email'
wp option delete 'ptfw_bridge_phone'
wp option delete 'A2C_woocommerce_bridge_connector_is_installed'

