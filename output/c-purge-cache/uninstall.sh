#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloudflare-purge'

# Clear Cron Jobs
wp cron event delete 'c_purge_cache_on_post_update'

