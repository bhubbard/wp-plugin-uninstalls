#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiinlito_max_keywords'
wp option delete 'aiinlito_enable_caching'
wp option delete 'aiinlito_db_version'
wp option delete 'aiinlito_allowed_post_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiinlito_%'"

# Clear Cron Jobs
wp cron event delete 'aiinlito_process_keywords_cron'

