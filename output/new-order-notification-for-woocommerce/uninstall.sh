#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_new_order_id_for_notification'
wp option delete '__new_order_option'
wp option delete '_order_id_for_new_order_notification'
wp option delete '_non_v2_alert_options'
wp option delete 'nonw_settings'

