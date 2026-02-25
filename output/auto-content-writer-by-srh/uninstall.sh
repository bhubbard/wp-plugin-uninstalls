#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acwbsrh_api_key'
wp option delete 'acwbsrh_settings'
wp option delete 'acwbsrh_blog_history'

# Clear Cron Jobs
wp cron event delete 'acwbsrh_auto_generate_blog'

