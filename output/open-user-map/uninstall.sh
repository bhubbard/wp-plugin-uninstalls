#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oum_map_height'
wp option delete 'oum_custom_css'
wp option delete 'oum_vote_cookie_type'
wp option delete 'oum_custom_js'
wp option delete 'oum_thankyou_buttontext'
wp option delete 'oum_enable_auto_publish'
wp option delete 'oum_enable_advanced_filter'
wp option delete 'oum_map_style'
wp option delete 'oum_custom_fields'
wp option delete 'oum_max_audio_filesize'
wp option delete 'oum_max_image_filesize'
wp option delete 'oum_enable_vote_feature'
wp option delete 'oum_vote_type'
wp option delete 'oum_enable_webhook_notification'
wp option delete 'oum_webhook_notification_url'
wp option delete 'oum_user_notification_label'
wp option delete 'oum_tile_provider_mapbox_key'
wp option delete 'oum_marker_icon'
wp option delete 'oum_marker_user_icon'
wp option delete 'oum_enable_multiple_marker_types'
wp option delete 'widget_block'
wp option delete 'oum_enable_regions'
wp option delete 'oum_getting_started_notice_dismissed'
wp option delete 'oum_update_notice_dismissed_version'
wp option delete 'oum_marker_multicategories_icon'
wp option delete 'oum_enable_category_icons_in_title'
wp option delete 'oum_max_image_uploads'
wp option delete 'oum_popup_image_size'
wp option delete 'oum_map_size'
wp option delete 'oum_map_height_mobile'
wp option delete 'oum_start_lat'
wp option delete 'oum_start_lng'
wp option delete 'oum_start_zoom'
wp option delete 'oum_enable_fixed_map_bounds'
wp option delete 'oum_enable_title'
wp option delete 'oum_title_required'
wp option delete 'oum_title_maxlength'
wp option delete 'oum_title_label'
wp option delete 'oum_map_label'
wp option delete 'oum_hide_address'
wp option delete 'oum_enable_address'
wp option delete 'oum_enable_address_autofill'
wp option delete 'oum_geosearch_provider'
wp option delete 'oum_geosearch_provider_geoapify_key'
wp option delete 'oum_geosearch_provider_here_key'
wp option delete 'oum_geosearch_provider_mapbox_key'
wp option delete 'oum_enable_searchbar'
wp option delete 'oum_searchbar_type'
wp option delete 'oum_enable_searchaddress_button'
wp option delete 'oum_searchaddress_label'
wp option delete 'oum_enable_searchmarkers_button'
wp option delete 'oum_searchmarkers_label'
wp option delete 'oum_searchmarkers_zoom'
wp option delete 'oum_enable_gmaps_link'
wp option delete 'oum_address_label'
wp option delete 'oum_enable_description'
wp option delete 'oum_description_required'
wp option delete 'oum_description_label'
wp option delete 'oum_upload_media_label'
wp option delete 'oum_enable_image'
wp option delete 'oum_image_required'
wp option delete 'oum_enable_audio'
wp option delete 'oum_audio_required'
wp option delete 'oum_enable_video'
wp option delete 'oum_video_required'
wp option delete 'oum_enable_scrollwheel_zoom_map'
wp option delete 'oum_enable_cluster'
wp option delete 'oum_enable_fullscreen'
wp option delete 'oum_enable_currentlocation'
wp option delete 'oum_disable_oum_attribution'
wp option delete 'oum_action_after_submit'
wp option delete 'oum_thankyou_redirect'
wp option delete 'oum_thankyou_headline'
wp option delete 'oum_thankyou_text'
wp option delete 'oum_plus_button_label'
wp option delete 'oum_submit_button_label'
wp option delete 'oum_form_headline'
wp option delete 'oum_enable_user_notification'
wp option delete 'oum_user_notification_subject'
wp option delete 'oum_enable_admin_notification'
wp option delete 'oum_admin_notification_email'
wp option delete 'oum_admin_notification_subject'
wp option delete 'oum_enable_user_restriction'
wp option delete 'oum_enable_redirect_to_registration'
wp option delete 'oum_enable_auto_publish_for_everyone'
wp option delete 'oum_enable_add_user_location'
wp option delete 'oum_enable_marker_types'
wp option delete 'oum_enable_empty_marker_type'
wp option delete 'oum_enable_toggle_all_categories'
wp option delete 'oum_collapse_filter'
wp option delete 'oum_marker_types_label'
wp option delete 'oum_ui_color'
wp option delete 'oum_enable_add_location'
wp option delete 'oum_enable_single_page'
wp option delete 'oum_enable_location_date'
wp option delete 'oum_location_date_type'
wp option delete 'oum_regions_layout_style'
wp option delete 'oum_vote_button_label'
wp option delete 'oum_custom_image_url'
wp option delete 'oum_custom_image_bounds'
wp option delete 'oum_custom_image_hide_tiles'
wp option delete 'oum_custom_image_background_color'
wp option delete 'oum_advanced_filter_layout'
wp option delete 'oum_advanced_filter_label'
wp option delete 'oum_advanced_filter_reset_text'
wp option delete 'oum_advanced_filter_sections'
wp option delete 'oum_csv_import_publish_immediately'
wp option delete 'oum_wizard_usecase'
wp option delete 'oum_wizard_usecase_done'
wp option delete 'oum_wizard_finish_done'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oum_location_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oum_location_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oum_location_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oum_location_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oum_location_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oum_location_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oum_location_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oum_location_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oum_location_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oum_location_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oum_location_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oum_location_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oum_location_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oum_location_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oum_location_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oum_location_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oum_marker_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oum_marker_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oum_marker_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oum_marker_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oum_marker_user_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oum_marker_user_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oum_marker_user_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oum_marker_user_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oum_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oum_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oum_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oum_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oum_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oum_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oum_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oum_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oum_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oum_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oum_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oum_zoom'"
