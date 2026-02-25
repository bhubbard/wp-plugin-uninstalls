#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xga_tracking_id'
wp option delete 'xga_track_admin'

# Clear Cron Jobs
wp cron event delete 'update_xstream_ga'

