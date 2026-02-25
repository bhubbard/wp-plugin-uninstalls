#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '2checkout_version'
wp option delete '2checkout_install_time'
wp option delete 'codexpert-blog-json'
wp option delete '_site_transient_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete '2checkout_daily'
wp cron event delete 'codexpert-daily'

