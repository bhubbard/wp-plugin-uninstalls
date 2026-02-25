#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'breezy_404_option_enabled'
wp option delete 'breezy_404_option_browser_title'
wp option delete 'breezy_404_option_page_title'
wp option delete 'breezy_404_option_content'
wp option delete 'breezy_404_option_logo'
wp option delete 'breezy_404_option_button_text'
wp option delete 'breezy_404_option_page_title_font_size'
wp option delete 'breezy_404_option_page_title_font_color'
wp option delete 'breezy_404_option_content_font_size'
wp option delete 'breezy_404_option_content_font_color'
wp option delete 'breezy_404_option_button_font_size'
wp option delete 'breezy_404_option_button_font_color'
wp option delete 'breezy_404_option_button_bg_color'
wp option delete 'breezy_404_option_logo_width'
wp option delete 'breezy_404_option_custom_css'
wp option delete 'breezy_back_to_top_option_enabled'
wp option delete 'breezy_back_to_top_option_button_width'
wp option delete 'breezy_back_to_top_option_button_height'
wp option delete 'breezy_back_to_top_option_button_bg_color'
wp option delete 'breezy_back_to_top_option_button_transparent_bg_color'
wp option delete 'breezy_back_to_top_option_icon'
wp option delete 'breezy_back_to_top_option_button_position'
wp option delete 'breezy_back_to_top_option_button_scroll'
wp option delete 'breezy_back_to_top_option_scroll_speed'
wp option delete 'breezy_helper_security_option_enabled'
wp option delete 'breezy_helper_security_login_slug'
wp option delete 'breezy_helper_security_disable_user_json_api'
wp option delete 'breezy_helper_files_control_option_enabled'
wp option delete 'breezy_helper_files_control_allowed_file_types_enabled'
wp option delete 'breezy_helper_files_control_max_file_size'
wp option delete 'breezy_helper_files_control_allowed_file_types'
wp option delete 'breezy_helper_disable_search_option_enabled'
wp option delete 'breezy_maintenance_settings'
wp option delete 'breezy_map_locations_publicly_queryable'
wp option delete 'breezy_map_locations_custom_slug_enabled'
wp option delete 'breezy_map_locations_slug'
wp option delete 'breezy_map_locations_slug_prev'
wp option delete 'breezy_map_google_api_key'
wp option delete 'breezy_map_onemap_email'
wp option delete 'breezy_map_onemap_password'
wp option delete 'breezy_map_onemap_token_data'
wp option delete 'breezy_onemap_auth'
wp option delete 'breezy_onemap_email'
wp option delete 'breezy_onemap_password'
wp option delete 'breezy_global_search_settings'
wp option delete 'breezy_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_map_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_map_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_map_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_map_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_map_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_map_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_map_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_map_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_map_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_map_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_map_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_map_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_map_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_map_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_map_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_map_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_map_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_map_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_map_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_map_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_map_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_map_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_map_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_map_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_map_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_map_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_map_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_map_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_enable_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_enable_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_enable_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_enable_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_enable_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_enable_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_enable_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_enable_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_search_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_search_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_search_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_search_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_enable_listing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_enable_listing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_enable_listing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_enable_listing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_listing_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_listing_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_listing_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_listing_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_enable_radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_enable_radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_enable_radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_enable_radius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_radius_within'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_radius_within'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_radius_within'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_radius_within'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_radius_dropdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_radius_dropdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_radius_dropdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_radius_dropdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_filters_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_filters_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_filters_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_filters_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_filters_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_filters_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_filters_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_filters_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_filters_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_filters_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_filters_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_filters_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_enable_user_location_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_enable_user_location_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_enable_user_location_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_enable_user_location_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_search_user_location_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_search_user_location_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_search_user_location_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_search_user_location_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_marker_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_marker_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_marker_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_marker_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_marker_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_marker_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_marker_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_marker_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_marker_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_marker_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_marker_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_marker_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_marker_map_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_marker_map_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_marker_map_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_marker_map_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_marker_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_marker_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_marker_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_marker_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_marker_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_marker_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_marker_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_marker_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_marker_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_marker_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_marker_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_marker_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_enable_auto_locate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_enable_auto_locate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_enable_auto_locate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_enable_auto_locate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_auto_locate_proximity_radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_auto_locate_proximity_radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_auto_locate_proximity_radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_auto_locate_proximity_radius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_enable_nearby_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_enable_nearby_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_enable_nearby_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_enable_nearby_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breezy_map_enable_nearby_location_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breezy_map_enable_nearby_location_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breezy_map_enable_nearby_location_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breezy_map_enable_nearby_location_text'"
