#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notify_old_blog'

# Clear Cron Jobs
wp cron event delete 'notify_old_blog_cron'

