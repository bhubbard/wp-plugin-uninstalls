#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scheduled_unsticky_days'
wp option delete 'scheduled_unsticky_cron'

# Clear Cron Jobs
wp cron event delete 'scheduled_unsticky_posts'

