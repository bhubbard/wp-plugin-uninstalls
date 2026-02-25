#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xpressbot_abandoned_cart_webhook_url'
wp option delete 'xpressbot_abandoned_cart_cutoff'
wp option delete 'xpressbot_webchat_widget_code'
wp option delete 'xpressbot_wabachat_widget_code'

# Clear Cron Jobs
wp cron event delete 'xpressbot_check_abandoned_carts'

