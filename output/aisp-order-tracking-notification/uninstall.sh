#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aisp_order-tracking-notification_cleanup_on_uninstall'
wp option delete 'aisp_order-tracking-notification_api_key'
wp option delete 'aisp_order-tracking-notification_pickup_methods'

