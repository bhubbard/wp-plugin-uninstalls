#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'droppcc-setting'
wp option delete 'droppcc-profile'
wp option delete 'droppcc-setting '
wp option delete 'droppcc-profile '

# Clear Cron Jobs
wp cron event delete 'dropp_data_log_cron'

