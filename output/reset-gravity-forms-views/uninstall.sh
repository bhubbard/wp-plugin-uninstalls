#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wh_gf_views_cron_settings'

# Clear Cron Jobs
wp cron event delete 'wh_gf_views_cron_jobs'

