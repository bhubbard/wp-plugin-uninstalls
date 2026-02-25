#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yaimre_options'

# Clear Cron Jobs
wp cron event delete 'yaimre_check_media_details_in_batch'

