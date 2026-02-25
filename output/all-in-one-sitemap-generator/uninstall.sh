#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aio_gmt_offset'

# Clear Cron Jobs
wp cron event delete 'aiositemap_create'
wp cron event delete 'aiositemap_create '

