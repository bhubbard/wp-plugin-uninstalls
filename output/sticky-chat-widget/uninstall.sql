-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scw_redirect', 'gsb_selected_channels', 'is_scw_database_migrated', 'gsb_widget_active', 'gsb_widget_settings', 'gsb_trigger_rules', 'gsb_page_rules', 'gsb_time_rules', 'gsb_tooltip_settings', 'gsb_google_analytics', 'gsb_button_css', 'gsb_updated_date', 'sticky-chat-widget_review_box_status', 'scb-sent-leads-mail');
DELETE FROM wp_options WHERE option_name LIKE '%_review_box_status';
DELETE FROM wp_options WHERE option_name LIKE '%_review_date';
DELETE FROM wp_options WHERE option_name LIKE '%-subscribe-hide';
DELETE FROM wp_options WHERE option_name LIKE 'ginger_sb_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('channel_settings', 'contact_form_settings', 'selected_channels', 'widget_settings', 'trigger_rules', 'page_rules', 'display_rules', 'tooltip_settings', 'google_analytics', 'widget_status', 'button_css', 'weekdays');
DELETE FROM wp_usermeta WHERE meta_key IN ('channel_settings', 'contact_form_settings', 'selected_channels', 'widget_settings', 'trigger_rules', 'page_rules', 'display_rules', 'tooltip_settings', 'google_analytics', 'widget_status', 'button_css', 'weekdays');
DELETE FROM wp_termmeta WHERE meta_key IN ('channel_settings', 'contact_form_settings', 'selected_channels', 'widget_settings', 'trigger_rules', 'page_rules', 'display_rules', 'tooltip_settings', 'google_analytics', 'widget_status', 'button_css', 'weekdays');
DELETE FROM wp_commentmeta WHERE meta_key IN ('channel_settings', 'contact_form_settings', 'selected_channels', 'widget_settings', 'trigger_rules', 'page_rules', 'display_rules', 'tooltip_settings', 'google_analytics', 'widget_status', 'button_css', 'weekdays');

