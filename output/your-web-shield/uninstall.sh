#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yourwebshield_risk_threshold'
wp option delete 'yourwebshield_max_requests'
wp option delete 'yourwebshield_window_ms'
wp option delete 'yourwebshield_waf_enabled'
wp option delete 'yourwebshield_waf_sql_enabled'
wp option delete 'yourwebshield_waf_xss_enabled'
wp option delete 'yourwebshield_waf_common_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yourwebshield_ip_%' OR option_name LIKE '_site_transient_yourwebshield_ip_%'"

# Clear Cron Jobs
wp cron event delete 'yourwebshield_send_logged_ips_event'

