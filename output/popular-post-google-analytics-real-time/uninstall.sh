#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%path_private_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%popular_posts_number'"

# Clear Cron Jobs
wp cron event delete 'scheduler_pprt_get_popular'

