#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc_last_order_time'
wp option delete 'wpc_last_order_id'
wp option delete 'wpc_notification_settings'
wp option delete 'wpc_last_seen_order_id'

