#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fv_gravatar_cache'
wp option delete 'fv_gravatar_cache_nag'
wp option delete 'fv_gravatar_cache_directory_changed'
wp option delete 'fv_gravatar_cache_offset'

# Clear Cron Jobs
wp cron event delete 'fv_gravatar_cache_cron'

