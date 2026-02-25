#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tfcm_plugin_version'
wp option delete 'tfcm_old_log_export_notice'

# Delete Transients
wp transient delete 'tfcm_all_bots'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tfcm_quarantine_%' OR option_name LIKE '_site_transient_tfcm_quarantine_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%columnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%columnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%columnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%columnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfcm_elements_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfcm_elements_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfcm_elements_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfcm_elements_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetoplevel_page_traffic-monitorcolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetoplevel_page_traffic-monitorcolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetoplevel_page_traffic-monitorcolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetoplevel_page_traffic-monitorcolumnshidden'"
