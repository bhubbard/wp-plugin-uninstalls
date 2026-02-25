#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bbp_delete_spam_hours_old'

# Clear Cron Jobs
wp cron event delete 'bbpress_autodelete_psuedo_cron'

