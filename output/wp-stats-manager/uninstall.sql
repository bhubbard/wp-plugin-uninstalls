-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsmTimezoneString', 'exclusion_ip_address_list', 'wsm_popup_status', 'wsm_free_active_time', 'wsm_free_review_dismiss');
DELETE FROM wp_options WHERE option_name LIKE '%TimezoneString';
DELETE FROM wp_options WHERE option_name LIKE '%ChartDays';
DELETE FROM wp_options WHERE option_name LIKE '%Country';
DELETE FROM wp_options WHERE option_name LIKE '%ArchiveDays';
DELETE FROM wp_options WHERE option_name LIKE '%KeepData';
DELETE FROM wp_options WHERE option_name LIKE '%ReportScheduleTime';
DELETE FROM wp_options WHERE option_name LIKE '%SiteDashboardNormalWidgets';
DELETE FROM wp_options WHERE option_name LIKE '%SiteDashboardSideWidgets';
DELETE FROM wp_options WHERE option_name LIKE '%SitePluginNormalWidgets';
DELETE FROM wp_options WHERE option_name LIKE '%SitePluginSideWidgets';
DELETE FROM wp_options WHERE option_name LIKE '%UserRoles';
DELETE FROM wp_options WHERE option_name LIKE '%UserRolesExcluding';
DELETE FROM wp_options WHERE option_name LIKE '%Robots';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%GoogleMapAPI';
DELETE FROM wp_options WHERE option_name LIKE '%ReportStats';
DELETE FROM wp_options WHERE option_name LIKE '%ReportEmails';
DELETE FROM wp_options WHERE option_name LIKE '%Dashboard_widget';
DELETE FROM wp_options WHERE option_name LIKE '%Plugin_widget';
DELETE FROM wp_options WHERE option_name LIKE '%_tables';
DELETE FROM wp_options WHERE option_name LIKE '%_dailyReportedTime';
DELETE FROM wp_options WHERE option_name LIKE '%_lastHitTime';
DELETE FROM wp_options WHERE option_name LIKE '%AdminColors';
DELETE FROM wp_options WHERE option_name LIKE '%dashboard_widget';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsm_dismiss_timezone_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsm_dismiss_timezone_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsm_dismiss_timezone_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsm_dismiss_timezone_notice');

