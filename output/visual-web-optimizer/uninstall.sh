#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ignore_js'
wp option delete 'vwo_id'
wp option delete 'code_type'
wp option delete 'vwo_clicks'
wp option delete 'settings_tolerance'
wp option delete 'library_tolerance'
wp option delete 'use_existing_jquery'
wp option delete 'enable_woocommerce_event_tracking'
wp option delete 'track_product_view'
wp option delete 'track_add_to_cart'
wp option delete 'track_remove_from_cart'
wp option delete 'track_checkout'
wp option delete 'track_purchase'
wp option delete 'vwo_server_side_tracking'
wp option delete 'vwo_coll_url'

