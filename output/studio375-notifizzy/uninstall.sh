#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notifizzy_token'
wp option delete 'notifizzy_entries'
wp option delete 'notifizzy_log'
wp option delete 'notifizzy_response1'
wp option delete 'notifizzy_response'

# Clear Cron Jobs
wp cron event delete 'notifizzy_cron'

