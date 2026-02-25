#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hyper-cache'

# Clear Cron Jobs
wp cron event delete 'hyper_cache_clean'

