#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatway_user_identifier'
wp option delete 'chatway_token'
wp option delete 'cht_redirect'
wp option delete 'cht_numb_slug'
wp option delete 'hide_chaty_cta'
wp option delete 'cht_active'
wp option delete 'hide_chaty_recommended_plugin'
wp option delete 'chaty_intro_popup'
wp option delete 'cht_license_key'
wp option delete 'cht_color'
wp option delete 'cht_custom_color'
wp option delete 'cht_position'
wp option delete 'positionSide'
wp option delete 'cht_bottom_spacing'
wp option delete 'cht_side_spacing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cht_widget_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cht_social_%'"
wp option delete 'cht_devices'
wp option delete 'cht_widget_font'
wp option delete 'cht_cta'
wp option delete 'cht_cta_switcher'
wp option delete 'cht_widget_size'
wp option delete 'cht_widget_img'
wp option delete 'widget_icon'
wp option delete 'chaty_attention_effect'
wp option delete 'chaty_default_state'
wp option delete 'chaty_trigger_on_time'
wp option delete 'chaty_trigger_time'
wp option delete 'chaty_trigger_on_exit'
wp option delete 'chaty_trigger_on_scroll'
wp option delete 'chaty_trigger_on_page_scroll'
wp option delete 'cht_close_button'
wp option delete 'cht_close_button_text'
wp option delete 'chaty_icons_view'
wp option delete 'cht_created_on'
wp option delete 'cht_widget_title'
wp option delete 'cht_cta_action'
wp option delete 'cht_cta_text_color'
wp option delete 'cht_cta_bg_color'
wp option delete 'cht_pending_messages'
wp option delete 'cht_number_of_messages'
wp option delete 'cht_number_color'
wp option delete 'cht_number_bg_color'
wp option delete 'cta_type'
wp option delete 'cta_heading_text'
wp option delete 'cta_body_text'
wp option delete 'cta_header_text_color'
wp option delete 'cta_header_bg_color'
wp option delete 'chaty_updated_on'
wp option delete 'chaty_contact_us_setting'
wp option delete 'show_first_chaty_box'
wp option delete 'cht_is_chatway_added'
wp option delete 'cht_is_default_deleted'
wp option delete 'cht_social_whatsapp'
wp option delete 'cht_social_phone'
wp option delete 'Chaty_show_affiliate_box_after'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after'"
wp option delete 'chaty_views'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cht_active%'"
wp option delete 'show_first_chaty_lead_box'
wp option delete 'cht_google_analytics'
wp option delete 'cht_date_and_time_settings'
wp option delete 'litespeed.conf.optm-js_defer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cht_numb_slug%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after'"
wp option delete 'cht_social_Contact_Us'
wp option delete 'cht_page_title_for_change'
wp option delete 'chaty_traffic_source'
wp option delete 'chaty_traffic_source_direct_visit'
wp option delete 'chaty_traffic_source_social_network'
wp option delete 'chaty_traffic_source_search_engine'
wp option delete 'chaty_traffic_source_google_ads'
wp option delete 'chaty_custom_traffic_rules'

# Delete Transients
wp transient delete 'chaty_user_country'

