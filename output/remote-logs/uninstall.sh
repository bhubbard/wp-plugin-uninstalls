#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'remote_logs_settings'

# Clear Cron Jobs
wp cron event delete 'remote_logs_cleanup_expired_tokens'

