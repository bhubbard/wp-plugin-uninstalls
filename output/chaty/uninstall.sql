-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatway_user_identifier', 'chatway_token', 'cht_redirect', 'cht_numb_slug', 'hide_chaty_cta', 'cht_active', 'hide_chaty_recommended_plugin', 'chaty_intro_popup', 'cht_license_key', 'cht_color', 'cht_custom_color', 'cht_position', 'positionSide', 'cht_bottom_spacing', 'cht_side_spacing', 'cht_devices', 'cht_widget_font', 'cht_cta', 'cht_cta_switcher', 'cht_widget_size', 'cht_widget_img', 'widget_icon', 'chaty_attention_effect', 'chaty_default_state', 'chaty_trigger_on_time', 'chaty_trigger_time', 'chaty_trigger_on_exit', 'chaty_trigger_on_scroll', 'chaty_trigger_on_page_scroll', 'cht_close_button', 'cht_close_button_text', 'chaty_icons_view', 'cht_created_on', 'cht_widget_title', 'cht_cta_action', 'cht_cta_text_color', 'cht_cta_bg_color', 'cht_pending_messages', 'cht_number_of_messages', 'cht_number_color', 'cht_number_bg_color', 'cta_type', 'cta_heading_text', 'cta_body_text', 'cta_header_text_color', 'cta_header_bg_color', 'chaty_updated_on', 'chaty_contact_us_setting', 'show_first_chaty_box', 'cht_is_chatway_added');
DELETE FROM wp_options WHERE option_name IN ('cht_is_default_deleted', 'cht_social_whatsapp', 'cht_social_phone', 'Chaty_show_affiliate_box_after', 'chaty_views', 'show_first_chaty_lead_box', 'cht_google_analytics', 'cht_date_and_time_settings', 'litespeed.conf.optm-js_defer', 'cht_social_Contact_Us', 'cht_page_title_for_change', 'chaty_traffic_source', 'chaty_traffic_source_direct_visit', 'chaty_traffic_source_social_network', 'chaty_traffic_source_search_engine', 'chaty_traffic_source_google_ads', 'chaty_custom_traffic_rules', 'chaty_user_country');
DELETE FROM wp_options WHERE option_name LIKE 'cht_widget_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'cht_social_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after';
DELETE FROM wp_options WHERE option_name LIKE 'cht_active%';
DELETE FROM wp_options WHERE option_name LIKE 'cht_numb_slug%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after';

