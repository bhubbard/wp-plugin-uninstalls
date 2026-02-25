#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dp_active'
wp option delete 'dp_version'

# Clear Cron Jobs
wp cron event delete 'dp_reviews_rating_run'

