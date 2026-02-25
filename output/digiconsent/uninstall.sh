#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digiconsent_settings'
wp option delete 'digiconsent_activation_timestamp'
wp option delete 'digiconsent_review_notice_dismissed'

# Delete Transients
wp transient delete 'digiconsent_review_notice_dismissed_temporarily'
wp transient delete 'digiconsent_pro_license_details'

# Clear Cron Jobs
wp cron event delete 'digiconsent_daily_cleanup'

