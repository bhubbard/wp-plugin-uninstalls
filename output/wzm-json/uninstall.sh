#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wzm_posts_per_page'
wp option delete 'wzm_products_per_page'
wp option delete 'wzm_json_update_time'

# Clear Cron Jobs
wp cron event delete 'wzm_cron_hook'

