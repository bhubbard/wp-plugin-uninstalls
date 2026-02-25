#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sendlime_installed'
wp option delete 'sendlime_version'
wp option delete 'sendlime_wc_order_notification_settings'

