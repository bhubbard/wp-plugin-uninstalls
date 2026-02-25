#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_aramex_optilog_settings'

# Clear Cron Jobs
wp cron event delete 'aramex_optilog'

