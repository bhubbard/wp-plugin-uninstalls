#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csh_ai_license_robots_signature'

# Clear Cron Jobs
wp cron event delete 'csh_ai_refresh_token_event'

