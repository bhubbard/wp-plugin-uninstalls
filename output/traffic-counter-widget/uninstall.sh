#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_traffic_counter'
wp option delete 'wp_wtc_WidgetTitle'
wp option delete 'wp_wtc_WidgetText_Visitors'
wp option delete 'wp_wtc_WidgetText_LastDay'
wp option delete 'wp_wtc_WidgetText_LastWeek'
wp option delete 'wp_wtc_WidgetText_LastMonth'
wp option delete 'wp_wtc_WidgetText_Online'
wp option delete 'wp_wtc_WidgetText_log_opt'
wp option delete 'wp_wtc_WidgetText_bots_filter'
wp option delete 'wp_wtc_WidgetText_Hits'
wp option delete 'wp_wtc_WidgetText_Unique'
wp option delete 'wp_wtc_WidgetText_Default_Tab'
wp option delete 'wp_wtc_WidgetText_wlink'

