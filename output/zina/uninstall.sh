#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zina_options'
wp option delete 'zina_sidebar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_period'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_items'"
wp option delete 'secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Clear Cron Jobs
wp cron event delete 'zinawp_cron'

