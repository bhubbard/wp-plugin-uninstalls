-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwpb_enable', 'prayer_dwpb', 'dwpb_ramain_top', 'dwpb_push_page', 'dwpb_show_bottom', 'dwpb_bar_text', 'dwpb_link_text', 'dwpb_link_url', 'dwpb_link_target', 'dwpb_font_size', 'dwpb_font_family', 'dwpb_background_color', 'dwpb_background_image', 'dwpb_font_color', 'dwpb_border_color', 'dwpb_link_color', 'dwpb_link_style', 'dwpb_button_color', 'dwpb_custon_style', 'dwpb_reset_cookie', 'fluid_notification_bar_settings', 'prayer_asr', 'prayer_method', 'prayer_lat', 'prayer_long', 'prayer_khutbah1', 'prayer_iqamah1', 'prayer_khutbah2', 'prayer_iqamah2', 'prayer_khutbah3', 'prayer_iqamah3', 'sw_current_color', 'sw_month_size', 'sw_hover_color', 'sw_day_color', 'sw_title_color', 'sw_sticky_color');

