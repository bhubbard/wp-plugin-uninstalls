#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'static_deploy_process_queue'

