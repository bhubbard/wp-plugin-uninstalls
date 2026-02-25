-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_traffic_counter', 'wp_wtc_WidgetTitle', 'wp_wtc_WidgetText_Visitors', 'wp_wtc_WidgetText_LastDay', 'wp_wtc_WidgetText_LastWeek', 'wp_wtc_WidgetText_LastMonth', 'wp_wtc_WidgetText_Online', 'wp_wtc_WidgetText_log_opt', 'wp_wtc_WidgetText_bots_filter', 'wp_wtc_WidgetText_Hits', 'wp_wtc_WidgetText_Unique', 'wp_wtc_WidgetText_Default_Tab', 'wp_wtc_WidgetText_wlink');

