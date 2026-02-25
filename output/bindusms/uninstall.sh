#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bindusms_installed'
wp option delete 'bindusms_version'
wp option delete 'bindusms_wc_order_notification_settings'

