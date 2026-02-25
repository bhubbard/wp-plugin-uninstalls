#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'httpbl_age_thres'
wp option delete 'httpbl_threat_thres'
wp option delete 'httpbl_threat_thres_s'
wp option delete 'httpbl_threat_thres_h'
wp option delete 'httpbl_threat_thres_c'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'httpbl_deny_%'"
wp option delete 'httpbl_white_listed_ips'
wp option delete 'httpbl_hp'
wp option delete 'httpbl_log'
wp option delete 'httpbl_stats'
wp option delete 'httpbl_stats_pattern'
wp option delete 'httpbl_stats_link'
wp option delete 'httpbl_key'
wp option delete 'httpbl_not_logged_ips'
wp option delete 'httpbl_log_blocked_only'
wp option delete 'dashboard_widget_options'

