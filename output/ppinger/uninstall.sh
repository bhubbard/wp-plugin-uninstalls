#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppinger_activated'
wp option delete 'ppinger_interval'
wp option delete 'ppinger_lastmessage'

# Clear Cron Jobs
wp cron event delete 'ppinger_cron'

