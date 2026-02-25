#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpspamcommtotal_val'
wp option delete 'wpspamcommscheduled_val'
wp option delete 'wpspamcommhours_val'

# Clear Cron Jobs
wp cron event delete 'WPSpamCommentEvent'

