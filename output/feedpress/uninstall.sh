#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedpress'

# Clear Cron Jobs
wp cron event delete 'feedpress_feeds_syncing_hook'

