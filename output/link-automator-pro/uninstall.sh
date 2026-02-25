#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkaupr_donation_qr_image_id'
wp option delete 'linkaupr_options'
wp option delete 'linkaupr_db_version'

# Delete Transients
wp transient delete 'linkaupr_keywords_cache'
wp transient delete 'linkaupr_stats_cache'

# Clear Cron Jobs
wp cron event delete 'linkaupr_daily_cleanup'

