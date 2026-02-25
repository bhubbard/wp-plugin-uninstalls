#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'miniature_options'
wp option delete 'miniature_cache'

# Clear Cron Jobs
wp cron event delete 'miniature_thumbinfo_build_schedule'
wp cron event delete 'miniature_thumbs_rebuild_schedule'
wp cron event delete 'miniature_single_thumb_build_schedule'
wp cron event delete 'miniature_thumbs_rebuilding_schedule'

