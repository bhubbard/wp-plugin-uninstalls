#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qb_plugin_options'

# Clear Cron Jobs
wp cron event delete 'quibos_birthdatechecker_cron'

