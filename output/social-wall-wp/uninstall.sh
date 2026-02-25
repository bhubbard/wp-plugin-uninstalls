#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_social_wall_api_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active'"

# Clear Cron Jobs
wp cron event delete 'wp_social_wall_fetch_posts'

