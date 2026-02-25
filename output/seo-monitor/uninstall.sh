#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seomonitor_settings'
wp option delete 'seomonitor_db_version'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seomonitor_se_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seomonitor_se_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seomonitor_se_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seomonitor_se_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seomonitor_se_search_engine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seomonitor_se_search_engine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seomonitor_se_search_engine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seomonitor_se_search_engine'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_seo_monitor_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_seo_monitor_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_seo_monitor_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_seo_monitor_log_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
