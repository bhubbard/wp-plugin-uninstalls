#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpty_db_version'
wp option delete 'wpty_priority'
wp option delete 'wpty_email'
wp option delete 'wpty_period'
wp option delete 'options'

# Delete Transients
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete 'send_post_to_blogger'

