#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disconnect_woocommerce_consumer_key'
wp option delete 'woocommerce_api_enabled'
wp option delete 'disconnect_woocommerce_consumer_secret'

