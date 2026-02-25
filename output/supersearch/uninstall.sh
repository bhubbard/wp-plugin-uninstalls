#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'supersearch_public_key'
wp option delete 'supersearch_mobile_top_offset'
wp option delete 'supersearch_desktop_top_offset'
wp option delete 'supersearch_private_key'
wp option delete 'supersearch_changed_posts'

# Clear Cron Jobs
wp cron event delete 'supersearch_daily_index_update'

