#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tavakal_included_roles'
wp option delete 'tavakal_time_type'
wp option delete 'tavakal_time_before_destroying_sessions'

# Clear Cron Jobs
wp cron event delete 'tavakal_destroy_expired_sessions'

