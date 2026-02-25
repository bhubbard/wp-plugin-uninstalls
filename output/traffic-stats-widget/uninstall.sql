-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_traffic_stats', 'wp_tsw_WidgetTitle', 'wp_tsw_WidgetText_Visitors', 'wp_tsw_WidgetText_LastDay', 'wp_tsw_WidgetText_LastWeek', 'wp_tsw_WidgetText_LastMonth', 'wp_tsw_WidgetText_Online', 'wp_tsw_WidgetText_log_opt', 'wp_tsw_WidgetText_bots_filter', 'wp_tsw_WidgetText_Hits', 'wp_tsw_WidgetText_Unique', 'wp_tsw_WidgetText_Default_Tab', 'wp_tsw_WidgetText_wlink');

