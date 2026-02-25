-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbps_popup_front_selection', 'wbps_preview_front_settings_background_color', 'wbps_preview_front_settings_text_color', 'wbps_preview_front_settings_title', 'wbps_preview_close_settings_background_color', 'wbps_preview_close_settings_text_color', 'wbps_enable_purchase_alert', 'wbps_purchase_alert_title', 'wbps_purchase_alert_content', 'wbps_purchase_button_text', 'wbps_purchase_button_action', 'wbps_purchase_button_link', 'wbps_preview_feature_fullscreen');

