#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ulticocl_triggers'
wp option delete 'ulticocl_settings'
wp option delete 'ulticocl_activity_log'
wp option delete 'rc_settings'

# Delete Transients
wp transient delete 'ulticocl_comments_count'

# Clear Cron Jobs
wp cron event delete 'ulticocl_check_triggers'

