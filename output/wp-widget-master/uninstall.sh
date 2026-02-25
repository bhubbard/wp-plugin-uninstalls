#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WidgetMaster_On_Homepage'
wp option delete 'WidgetMaster_On_Posts'
wp option delete 'WidgetMaster_On_Pages'
wp option delete 'WidgetMaster_On_Search'
wp option delete 'WidgetMaster_On_Archives'
wp option delete 'WidgetMaster_Icon_Align'
wp option delete 'WidgetMaster_Border_Color'
wp option delete 'WidgetMaster_Icon_padding'
wp option delete 'WidgetMaster_Icon_size'
wp option delete 'WidgetMaster_Icon_Open'
wp option delete 'WidgetMaster_Icon_Close'
wp option delete 'WidgetMaster_Icon_color'
wp option delete 'WidgetMaster_Icon_Bg_color'
wp option delete 'WidgetMaster_Border_Radius'
wp option delete 'WidgetMaster_Session_Expiration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'WidgetMaster_Open_Close_Main_Feature'
wp option delete 'WidgetMaster_Turn_On_Off_Features'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WM_widget_name_%'"
wp option delete 'WidgetMaster_fromemail'

# Clear Cron Jobs
wp cron event delete 'wp_session_garbage_collection'

