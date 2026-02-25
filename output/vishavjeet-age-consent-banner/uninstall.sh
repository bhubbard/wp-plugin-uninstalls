#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vjacb_version'
wp option delete 'vjacb_settings'

# Clear Cron Jobs
wp cron event delete 'vjacb_cleanup_sessions'

