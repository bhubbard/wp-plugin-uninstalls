#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'CHANNELENGINE_SCHEMA_VERSION'
wp option delete 'active_sitewide_plugins'
wp option delete '_channel_engine_order_save_note'
wp option delete '_channel_engine_order_save_success'

