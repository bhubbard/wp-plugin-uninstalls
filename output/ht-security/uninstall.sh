#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'htsec_nvd_api_key'
wp option delete 'htsec_check_progress'
wp option delete 'htsec_vulnerabilities'
wp option delete 'htsec_last_cve_check'
wp option delete 'htsec_enable_cve_alerts'
wp option delete 'htsec_alert_email'
wp option delete 'htsec_enable_login_alerts'
wp option delete 'htsec_maintenance_mode'
wp option delete 'htsec_maintenance_ips'
wp option delete 'htsec_show_plugin_badges'
wp option delete 'htsec_enable_headers'
wp option delete 'htsec_disable_user_enumeration'

# Clear Cron Jobs
wp cron event delete 'htsec_cve_check_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htsec_dismissed_error_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htsec_dismissed_error_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htsec_dismissed_error_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htsec_dismissed_error_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htsec_dismissed_success_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htsec_dismissed_success_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htsec_dismissed_success_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htsec_dismissed_success_notice'"
