#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payoneer-checkout_plugin_activated'

# Clear Cron Jobs
wp cron event delete 'payoneer_process_system_report'

