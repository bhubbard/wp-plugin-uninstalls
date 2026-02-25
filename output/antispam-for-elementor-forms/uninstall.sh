#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asef_etag'
wp option delete 'asef_remote_block_list'
wp option delete 'asef_enable'

# Clear Cron Jobs
wp cron event delete 'asef_cron'
wp cron event delete 'asef_cron_init'

