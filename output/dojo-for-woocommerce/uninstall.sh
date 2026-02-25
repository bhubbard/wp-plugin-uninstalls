#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dojo_settings'

# Clear Cron Jobs
wp cron event delete 'dojo_process_webhook_event'

