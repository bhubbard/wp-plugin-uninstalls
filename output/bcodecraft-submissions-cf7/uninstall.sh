#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bccs_activated'
wp option delete 'bccs_version'
wp option delete 'bccs_retention_days'
wp option delete 'bccs_enable_logging'
wp option delete 'bccs_enable_charts'
wp option delete 'bccs_frontend_integration'
wp option delete 'bccs_login_integration'
wp option delete 'bccs_cf7_status'
wp option delete 'bccs_db_version'
wp option delete 'bccs_activated_time'

# Delete Transients
wp transient delete 'bccs_admin_notice'
wp transient delete 'bccs_stats_cache'
wp transient delete 'bccs_show_ready_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bccs_stats_%' OR option_name LIKE '_site_transient_bccs_stats_%'"
wp transient delete 'bccs_stats_all'
wp transient delete 'bccs_stats'

# Clear Cron Jobs
wp cron event delete 'bccs_db_cleanup'
wp cron event delete 'bccs_log_cleanup'
wp cron event delete 'bccs_security_cleanup'
wp cron event delete 'bccs_cleanup'

