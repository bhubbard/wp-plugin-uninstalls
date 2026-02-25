#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'listagram_token'
wp option delete 'listagram_enabled'
wp option delete 'listagram_enabled_woocommerce'
wp option delete 'listagram_enabled_woocommerce_cart'

