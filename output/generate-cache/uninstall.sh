#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gen_cache_options'

# Clear Cron Jobs
wp cron event delete 'gen_cache_hook'

