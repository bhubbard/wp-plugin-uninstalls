#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whp_fixer_option'
wp option delete 'whp_admin_page'
wp option delete 'whp_radio_clickjacking_protection'
wp option delete 'whp_xss_protection'
wp option delete 'whp_content_sniffing_protection'
wp option delete 'whp_http_secure_flag'
wp option delete 'whp_custom_admin_report_email'
wp option delete 'whp_custom_admin_schedule_audit'
wp option delete 'custom_admin_report_email'
wp option delete 'whp_scan_results'
wp option delete 'whp_scan_results_time'
wp option delete 'whp_redirect'
wp option delete 'hard_cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_php_check_%' OR option_name LIKE '_site_transient_php_check_%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'whp_task_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whp_subscribed_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whp_subscribed_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whp_subscribed_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whp_subscribed_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_secure_subs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_secure_subs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_secure_subs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_secure_subs'"
