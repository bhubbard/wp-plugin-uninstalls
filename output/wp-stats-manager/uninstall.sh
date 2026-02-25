#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsmTimezoneString'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%TimezoneString'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ChartDays'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Country'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ArchiveDays'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%KeepData'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ReportScheduleTime'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%SiteDashboardNormalWidgets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%SiteDashboardSideWidgets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%SitePluginNormalWidgets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%SitePluginSideWidgets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%UserRoles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%UserRolesExcluding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Robots'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%GoogleMapAPI'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ReportStats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ReportEmails'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Dashboard_widget'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Plugin_widget'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tables'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dailyReportedTime'"
wp option delete 'exclusion_ip_address_list'
wp option delete 'wsm_popup_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lastHitTime'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%AdminColors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dashboard_widget'"
wp option delete 'wsm_free_active_time'
wp option delete 'wsm_free_review_dismiss'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsm_dismiss_timezone_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsm_dismiss_timezone_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsm_dismiss_timezone_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsm_dismiss_timezone_notice'"
