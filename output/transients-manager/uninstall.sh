#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'am_tm_install_time'
wp option delete 'pw_tm_suspend'

# Clear Cron Jobs
wp cron event delete 'delete_expired_transients'

