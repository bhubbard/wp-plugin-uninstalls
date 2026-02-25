#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_mipl_sl_default_settings'
wp option delete '_mipl_sl_stockist_custom_fields'
wp option delete '_mipl_sl_stockist_custom_filter'
wp option delete '_mipl_sl_primary_color'
wp option delete '_mipl_sl_background_color'
wp option delete '_mipl_sl_map_height'
wp option delete '_mipl_sl_here_map_api_key'
wp option delete '_mipl_sl_google_field_type'
wp option delete '_mipl_sl_google_map_api_key'
wp option delete '_mipl_sl_google_map_default_zoom'
wp option delete '_mipl_sl_google_map_default_location'
wp option delete '_mipl_sl_google_map_type'
wp option delete '_mipl_sl_google_zoom_as_per_the_map_pins'
wp option delete '_mipl_sl_google_map_controller'
wp option delete '_mipl_sl_google_map_radius_circle'
wp option delete '_mipl_sl_google_map_markerclusterer'
wp option delete '_mipl_sl_google_map_style'
wp option delete '_mipl_sl_google_map_custom_style'
wp option delete '_mipl_sl_layout_type'
wp option delete '_mipl_sl_open_info_window'
wp option delete '_mipl_sl_disable_stores_public_url'
wp option delete '_mipl_sl_distance_unit'
wp option delete '_mipl_sl_default_distance'
wp option delete '_mipl_sl_display_time_on_list'
wp option delete '_mipl_sl_display_time_on_infowindow'
wp option delete '_mipl_sl_display_social_on_list'
wp option delete '_mipl_sl_display_social_on_infowindow'
wp option delete '_mipl_sl_hide_image_on_list'
wp option delete '_mipl_sl_hide_image_on_infowindow'
wp option delete '_mipl_sl_distances'
wp option delete '_mipl_sl_labels'
wp option delete '_mipl_sl_map_current_location_icon'
wp option delete '_mipl_sl_map_current_location_custom_pin'
wp option delete '_mipl_sl_map_stores_location_icon'
wp option delete '_mipl_sl_map_stores_location_custom_pin'
wp option delete '_mipl_sl_map_provider'
wp option delete '_mipl_sl_custom_template'
wp option delete '_mipl_sl_hide_current_location_filter'
wp option delete '_mipl_sl_hide_category_filter'
wp option delete '_mipl_sl_hide_store_search_filter'
wp option delete '_mipl_sl_osm_geocode_service'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_mipl_sl_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_mipl_sl_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_mipl_sl_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_mipl_sl_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_opening_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_opening_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_opening_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_opening_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_opening_hours_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_opening_hours_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_opening_hours_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_opening_hours_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_telephone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_telephone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_telephone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_telephone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_post_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_post_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_post_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_post_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_fax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_fax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_fax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_fax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mipl_sl_social_media_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mipl_sl_social_media_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mipl_sl_social_media_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mipl_sl_social_media_link'"
