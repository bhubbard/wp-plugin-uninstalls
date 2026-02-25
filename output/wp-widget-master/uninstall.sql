-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WidgetMaster_On_Homepage', 'WidgetMaster_On_Posts', 'WidgetMaster_On_Pages', 'WidgetMaster_On_Search', 'WidgetMaster_On_Archives', 'WidgetMaster_Icon_Align', 'WidgetMaster_Border_Color', 'WidgetMaster_Icon_padding', 'WidgetMaster_Icon_size', 'WidgetMaster_Icon_Open', 'WidgetMaster_Icon_Close', 'WidgetMaster_Icon_color', 'WidgetMaster_Icon_Bg_color', 'WidgetMaster_Border_Radius', 'WidgetMaster_Session_Expiration', 'WidgetMaster_Open_Close_Main_Feature', 'WidgetMaster_Turn_On_Off_Features', 'WidgetMaster_fromemail');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'WM_widget_name_%';

