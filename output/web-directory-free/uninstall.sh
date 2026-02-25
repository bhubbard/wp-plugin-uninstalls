#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w2dc_manage_ratings'
wp option delete 'w2dc_installed_ratings'
wp option delete 'w2dc_reviews_comments_mode'
wp option delete 'w2dc_only_registered_users'
wp option delete 'w2dc_orderby_rating'
wp option delete 'w2dc_orderby_sticky_featured'
wp option delete 'w2dc_orderby_exclude_null'
wp option delete 'rewrite_rules'
wp option delete 'w2dc_installed_directory'
wp option delete 'vpt_option'
wp option delete 'w2dc_ratings_addon'
wp option delete 'w2dc_mapbox_map_style'
wp option delete 'w2dc_map_language_from_wpml'
wp option delete 'w2dc_google_api_key'
wp option delete 'w2dc_mapbox_api_key'
wp option delete 'w2dc_map_markers_type'
wp option delete 'w2dc_default_marker_color'
wp option delete 'w2dc_default_marker_icon'
wp option delete 'w2dc_map_marker_width'
wp option delete 'w2dc_map_marker_height'
wp option delete 'w2dc_map_marker_anchor_x'
wp option delete 'w2dc_map_marker_anchor_y'
wp option delete 'w2dc_default_geocoding_location'
wp option delete 'w2dc_address_autocomplete'
wp option delete 'w2dc_address_autocomplete_code'
wp option delete 'w2dc_address_geocode'
wp option delete 'w2dc_compare_palettes'
wp option delete 'w2dc_map_markers_is_limit'
wp option delete 'w2dc_default_orderby'
wp option delete 'w2dc_default_order'
wp option delete 'w2dc_show_orderby_links'
wp option delete 'w2dc_show_listings_count'
wp option delete 'w2dc_views_switcher'
wp option delete 'w2dc_views_switcher_default'
wp option delete 'w2dc_views_switcher_grid_columns'
wp option delete 'w2dc_listing_thumb_width'
wp option delete 'w2dc_wrap_logo_list_view'
wp option delete 'w2dc_logo_animation_effect'
wp option delete 'w2dc_listings_number_index'
wp option delete 'w2dc_miles_kilometers_in_search'
wp option delete 'w2dc_custom_contact_email'
wp option delete 'w2dc_excerpt_length'
wp option delete 'w2dc_nologo_url'
wp option delete 'w2dc_categories_icons'
wp option delete 'w2dc_categories_marker_images'
wp option delete 'w2dc_categories_marker_icons'
wp option delete 'w2dc_categories_marker_colors'
wp option delete 'w2dc_categories_images'
wp option delete 'w2dc_listings_tabs_order'
wp option delete 'w2dc_enable_html_description'
wp option delete 'w2dc_cropped_content_as_excerpt'
wp option delete 'w2dc_strip_excerpt'
wp option delete 'w2dc_fsubmit_addon'
wp option delete 'w2dc_claim_functionality'
wp option delete 'w2dc_default_map_zoom'
wp option delete 'w2dc_share_buttons_width'
wp option delete 'w2dc_hide_home_link_breadcrumb'
wp option delete 'w2dc_mobile_listings_grid_columns'
wp option delete 'w2dc_orderby_distance'
wp option delete 'w2dc_favourites_list'
wp option delete 'w2dc_print_button'
wp option delete 'w2dc_pdf_button'
wp option delete 'w2dc_listing_contact_form'
wp option delete 'w2dc_map_type'
wp option delete 'w2dc_default_map_height'
wp option delete 'w2dc_enable_full_screen'
wp option delete 'w2dc_enable_wheel_zoom'
wp option delete 'w2dc_enable_dragging_touchscreens'
wp option delete 'w2dc_center_map_onclick'
wp option delete 'w2dc_map_infowindow_logo_width'
wp option delete 'w2dc_enable_nologo'
wp option delete 'w2dc_exclude_logo_from_listing'
wp option delete 'w2dc_enable_lightbox_gallery'
wp option delete 'w2dc_100_single_logo_width'
wp option delete 'w2dc_single_logo_width'
wp option delete 'w2dc_single_logo_height'
wp option delete 'w2dc_big_slide_bg_mode'
wp option delete 'w2dc_auto_slides_gallery'
wp option delete 'w2dc_auto_slides_gallery_delay'
wp option delete 'w2dc_hide_claim_contact_form'
wp option delete 'w2dc_after_claim'
wp option delete 'w2dc_change_expiration_date'
wp option delete 'w2dc_claim_approval_notification'
wp option delete 'w2dc_claim_decline_notification'
wp option delete 'w2dc_enable_automatic_translations'
wp option delete 'w2dc_google_api_key_server'
wp option delete 'w2dc_addresses_order'
wp option delete 'w2dc_enable_address_line_1'
wp option delete 'w2dc_enable_address_line_2'
wp option delete 'w2dc_enable_postal_index'
wp option delete 'w2dc_enable_additional_info'
wp option delete 'w2dc_map_markers_required'
wp option delete 'w2dc_locations_icons'
wp option delete 'w2dc_locations_images'
wp option delete 'w2dc_map_infowindow_width'
wp option delete 'w2dc_show_directions'
wp option delete 'w2dc_prevent_users_see_other_media'
wp option delete 'w2dc_images_submit_required'
wp option delete 'w2dc_images_lightbox'
wp option delete 'w2dc_ajax_load'
wp option delete 'w2dc_show_more_button'
wp option delete 'w2dc_permalinks_structure'
wp option delete 'w2dc_listings_on_index'
wp option delete 'w2dc_listings_number_excerpt'
wp option delete 'w2dc_hide_anonymous_contact_form'
wp option delete 'w2dc_report_form'
wp option delete 'w2dc_pdf_page_orientation'
wp option delete 'w2dc_hide_comments_number_on_index'
wp option delete 'w2dc_hide_listing_title'
wp option delete 'w2dc_enable_stats'
wp option delete 'w2dc_hide_views_counter'
wp option delete 'w2dc_hide_listings_creation_date'
wp option delete 'w2dc_hide_author_link'
wp option delete 'w2dc_listings_comments_mode'
wp option delete 'w2dc_enable_breadcrumbs'
wp option delete 'w2dc_breadcrumbs_mode'
wp option delete 'w2dc_enable_description'
wp option delete 'w2dc_enable_summary'
wp option delete 'w2dc_listing_title_mode'
wp option delete 'w2dc_listing_logo_bg_mode'
wp option delete 'w2dc_grid_view_logo_ratio'
wp option delete 'w2dc_show_categories_index'
wp option delete 'w2dc_categories_nesting_level'
wp option delete 'w2dc_categories_columns'
wp option delete 'w2dc_subcategories_items'
wp option delete 'w2dc_show_category_count'
wp option delete 'w2dc_categories_order'
wp option delete 'w2dc_show_locations_index'
wp option delete 'w2dc_locations_nesting_level'
wp option delete 'w2dc_locations_columns'
wp option delete 'w2dc_sublocations_items'
wp option delete 'w2dc_show_locations_count'
wp option delete 'w2dc_locations_order'
wp option delete 'w2dc_orderby_date'
wp option delete 'w2dc_orderby_title'
wp option delete 'w2dc_search_form_id'
wp option delete 'w2dc_main_search'
wp option delete 'w2dc_directions_functionality'
wp option delete 'w2dc_google_map_style'
wp option delete 'w2dc_mapbox_map_style_custom'
wp option delete 'w2dc_map_on_index'
wp option delete 'w2dc_map_on_excerpt'
wp option delete 'w2dc_map_on_single'
wp option delete 'w2dc_enable_radius_search_circle'
wp option delete 'w2dc_enable_clusters'
wp option delete 'w2dc_enable_geolocation'
wp option delete 'w2dc_start_zoom'
wp option delete 'w2dc_map_min_zoom'
wp option delete 'w2dc_map_max_zoom'
wp option delete 'w2dc_enable_draw_panel'
wp option delete 'w2dc_search_on_map'
wp option delete 'w2dc_search_map_form_id'
wp option delete 'w2dc_hide_search_on_map_mobile'
wp option delete 'w2dc_enable_manual_coords'
wp option delete 'w2dc_zip_or_postal_text'
wp option delete 'w2dc_map_marker_size'
wp option delete 'w2dc_map_infowindow_offset'
wp option delete 'w2dc_admin_notifications_email'
wp option delete 'w2dc_send_expiration_notification_days'
wp option delete 'w2dc_preexpiration_notification'
wp option delete 'w2dc_expiration_notification'
wp option delete 'w2dc_force_include_js_css'
wp option delete 'w2dc_notinclude_jqueryui_css'
wp option delete 'w2dc_imitate_mode'
wp option delete 'w2dc_overwrite_page_title'
wp option delete 'w2dc_enable_recaptcha'
wp option delete 'w2dc_recaptcha_version'
wp option delete 'w2dc_recaptcha_public_key'
wp option delete 'w2dc_recaptcha_private_key'
wp option delete 'w2dc_color_scheme'
wp option delete 'w2dc_primary_color'
wp option delete 'w2dc_secondary_color'
wp option delete 'w2dc_links_color'
wp option delete 'w2dc_links_hover_color'
wp option delete 'w2dc_button_1_color'
wp option delete 'w2dc_button_2_color'
wp option delete 'w2dc_button_text_color'
wp option delete 'w2dc_button_gradient'
wp option delete 'w2dc_terms_links_color'
wp option delete 'w2dc_terms_links_hover_color'
wp option delete 'w2dc_terms_bg_color'
wp option delete 'w2dc_terms_heading_bg_color'
wp option delete 'w2dc_listings_bottom_margin'
wp option delete 'w2dc_listing_title_font'
wp option delete 'w2dc_jquery_ui_schemas'
wp option delete 'w2dc_share_buttons_style'
wp option delete 'w2dc_share_buttons'
wp option delete 'w2dc_share_counter'
wp option delete 'w2dc_share_buttons_place'
wp option delete 'w2dc_hide_empty_categories'
wp option delete 'w2dc_show_location_count'
wp option delete 'w2dc_hide_admin_bar'
wp option delete 'w2dc_payments_addon'
wp option delete 'w2dc_woocommerce_functionality'
wp option delete 'w2dc_scheduled_events_time'
wp option delete 'w2dc_hide_empty_locations'
wp option delete 'w2dc_directory_title'
wp option delete 'w2dc_map_style'
wp option delete 'w2dc_show_location_count_in_search'
wp option delete 'w2dc_listing_contact_form_7'
wp option delete 'w2dc_show_keywords_search'
wp option delete 'w2dc_keywords_ajax_search'
wp option delete 'w2dc_keywords_search_examples'
wp option delete 'w2dc_show_locations_search'
wp option delete 'w2dc_show_address_search'
wp option delete 'w2dc_show_category_count_in_search'
wp option delete 'w2dc_radius_search_min'
wp option delete 'w2dc_radius_search_max'
wp option delete 'w2dc_show_categories_search'
wp option delete 'w2dc_show_radius_search'
wp option delete 'w2dc_radius_search_default'
wp option delete 'w2dc_search_bg_color'
wp option delete 'w2dc_search_text_color'
wp option delete 'w2dc_enable_excerpt'
wp option delete 'w2dc_enable_lighbox_gallery'
wp option delete 'w2dc_search_bg_opacity'
wp option delete 'w2dc_search_overlay'
wp option delete 'w2dc_categories_search_nesting_level'
wp option delete 'w2dc_locations_search_nesting_level'
wp option delete 'w2dc_sticky_label'
wp option delete 'w2dc_featured_label'
wp option delete 'w2dc_hide_search_button'
wp option delete 'w2dc_auto_scroll_on_search'
wp option delete 'w2dc_installed_directory_version'
wp option delete 'w2dcf_installed_plugin_time'
wp option delete 'w2dcf_installed_directory_version'
wp option delete 'w2dc_google_maps_required'
wp option delete 'w2dc_ajax_initial_load'
wp option delete 'w2dc_installed_plugin_time'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'wcsearch_access_token'
wp option delete 'wcsearch_purchase_code'
wp option delete 'wcsearch_force_include_js_css'
wp option delete 'w2gm_address_autocomplete_code'
wp option delete 'w2gm_miles_kilometers_in_search'
wp option delete 'w2mb_address_autocomplete_code'
wp option delete 'w2mb_miles_kilometers_in_search'
wp option delete 'wcsearch_installed_search'
wp option delete 'wcsearch_installed_search_version'
wp option delete 'wcsearch_notinclude_jqueryui_css'
wp option delete 'w2dc_recaptcha_language_from_wpml'
wp option delete 'et_enqueue_google_maps_script'

# Delete Transients
wp transient delete 'w2dc_vp_fontawesome_icons'

# Clear Cron Jobs
wp cron event delete 'scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_content_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_content_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_content_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_content_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_hour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_hour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_hour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_hour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_minute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_minute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_minute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_minute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attached_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attached_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attached_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attached_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_directory_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_directory_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_directory_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_directory_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contact_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_claimable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_claimable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_claimable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_claimable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attached_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attached_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attached_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attached_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_map_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_map_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_map_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_map_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attached_images_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attached_images_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attached_images_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attached_images_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attached_image_as_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attached_image_as_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attached_image_as_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attached_image_as_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expiration_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expiration_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expiration_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expiration_notification_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preexpiration_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preexpiration_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preexpiration_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preexpiration_notification_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_level_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_level_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_level_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_level_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_level_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_level_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_level_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_level_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_requires_moderation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_requires_moderation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_requires_moderation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_requires_moderation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claim_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claim_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claim_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claim_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_listings_unlimited_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_listings_unlimited_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_listings_unlimited_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_listings_unlimited_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_listings_number_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_listings_number_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_listings_number_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_listings_number_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_place_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_place_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_place_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_place_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address_line_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address_line_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address_line_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address_line_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address_line_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address_line_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address_line_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address_line_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zip_or_postal_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zip_or_postal_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zip_or_postal_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zip_or_postal_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_additional_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_additional_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_additional_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_additional_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manual_coords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manual_coords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manual_coords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manual_coords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_map_coords_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_map_coords_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_map_coords_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_map_coords_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_map_coords_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_map_coords_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_map_coords_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_map_coords_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_map_icon_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_map_icon_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_map_icon_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_map_icon_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clicks_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clicks_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clicks_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clicks_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_total_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_total_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_total_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_total_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'directories_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'directories_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'directories_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'directories_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
