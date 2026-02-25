#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'le_single_post_post'

# Clear Cron Jobs
wp cron event delete 'le_activation'

