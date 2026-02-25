#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_simple_cache'
wp option delete 'sc_cant_write'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'sc_purge_cache'

