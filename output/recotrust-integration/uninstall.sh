#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_reco_plugin_reco_id'
wp option delete 'woocommerce_reco_plugin_is_active'
wp option delete 'woocommerce_reco_plugin_api_key'
wp option delete 'woocommerce_reco_plugin_send_order'
wp option delete 'woocommerce_reco_plugin_send_interval'

