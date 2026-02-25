#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'altoshift_send_checkout_stats'
wp option delete 'altoshift_engine_token'
wp option delete 'active_sitewide_plugins'
wp option delete 'altoshift_feed_price_export'
wp option delete 'altoshift_feed_password_protected'
wp option delete 'altoshift_feed_password'
wp option delete 'altoshift_layer_enabled'
wp option delete 'altoshift_layer_code'

