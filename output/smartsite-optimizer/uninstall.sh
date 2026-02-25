#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smopt_options'
wp option delete 'smopt_version'
wp option delete 'smopt_activation_time'

# Clear Cron Jobs
wp cron event delete 'smopt_clear_expired_cache'
wp cron event delete 'smopt_cleanup_analytics'

