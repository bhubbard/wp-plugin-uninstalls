#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcc_config'
wp option delete 'wpcc_options'

# Clear Cron Jobs
wp cron event delete 'wpcc_purge_cache'

