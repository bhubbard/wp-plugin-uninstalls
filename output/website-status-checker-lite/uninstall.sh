#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'servercheckpro_pro_purchase_date'
wp option delete 'servercheckpro_urls'
wp option delete 'servercheckpro_check_interval'
wp option delete 'servercheckpro_auto_check_enabled'
wp option delete 'servercheckpro_alert_on_slow'
wp option delete 'servercheckpro_last_checked_time'
wp option delete 'servercheckpro_results'
wp option delete 'servercheckpro_last_manual_check'
wp option delete 'servercheckpro_admin_notice_dismissed'

# Clear Cron Jobs
wp cron event delete 'servercheckpro_cron_event'

