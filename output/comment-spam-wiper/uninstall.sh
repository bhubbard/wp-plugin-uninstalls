#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csw_api_key'
wp option delete 'csw_spam_count'

# Clear Cron Jobs
wp cron event delete 'csw_scheduled_delete'

