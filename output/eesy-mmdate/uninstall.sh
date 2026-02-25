#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eesymodi_time'
wp option delete 'eesymodi_interval'
wp option delete 'eesymodi_selected_posts'
wp option delete 'eesymodi_last_update_date'

# Clear Cron Jobs
wp cron event delete 'eesymodi_update_post_modified'

