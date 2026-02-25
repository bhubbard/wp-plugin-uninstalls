-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('directorypress_installed_directory', 'directorypress_db_update_3_3_4', 'directorypress_db_update_3_4_0', 'directorypress_db_update_3_4_1', 'directorypress_db_update_3_5_11', 'directorypress_db_update_3_6_0', 'directorypress_db_update_3_6_1', 'directorypress_db_update_3_6_2', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux_custom_font_current', 'woocommerce_shop_page_id', 'auto_update_redux_google_fonts', 'directorypress_admin_settings', 'rewrite_rules', 'directorypress_enable_automatic_translations', 'directorypress_categories_marker_images', 'directorypress_map_markers_required', 'directorypress_search_bg_color', 'directorypress_search_text_color', 'directorypress_search_overlay', 'directorypress-twilio', 'global_directorypress_options', 'global_assets_timestamp', 'direviews_settings', 'users_status');
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%_color_scheme';
DELETE FROM wp_options WHERE option_name LIKE '%_sha1';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-taxonomy';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-users';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_hints', '_visibility', '_stock_status', '_attached_image', '_attached_image_clogo', '_attached_image_cover', '_attached_image_as_logo', '_thumbnail_id', '_attached_video_id', '_expiration_notification_sent', '_listing_status', '_preexpiration_notification_sent', '_notice_to_admin', '_listing_created', '_directory_id', '_contact_email', '_listing_faqs', 'facebook_link', 'twitter_link', 'linkedin_link', 'youtube_link', 'instagram_link', '_expiration_date', '_order_date', '_map_zoom', '_old_package_id', '_new_package_id', '_attached_image_cover_image', '_requires_moderation', '_listing_approved', 'email_verification_status', '_clicks_data', '_total_clicks', '_location_id', '_address_line_1', '_address_line_2', '_zip_or_postal_index', '_additional_info', '_manual_coords', '_map_coords_1', '_map_coords_2', '_map_icon_file', 'directorypress_category_icon', 'directorypress_category_icon_for_listing', 'directorypress_category_icon_for_map', 'category-image-id', 'directorypress_category_font_icon', 'marker_color', '_elementor_data', 'user_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_hints', '_visibility', '_stock_status', '_attached_image', '_attached_image_clogo', '_attached_image_cover', '_attached_image_as_logo', '_thumbnail_id', '_attached_video_id', '_expiration_notification_sent', '_listing_status', '_preexpiration_notification_sent', '_notice_to_admin', '_listing_created', '_directory_id', '_contact_email', '_listing_faqs', 'facebook_link', 'twitter_link', 'linkedin_link', 'youtube_link', 'instagram_link', '_expiration_date', '_order_date', '_map_zoom', '_old_package_id', '_new_package_id', '_attached_image_cover_image', '_requires_moderation', '_listing_approved', 'email_verification_status', '_clicks_data', '_total_clicks', '_location_id', '_address_line_1', '_address_line_2', '_zip_or_postal_index', '_additional_info', '_manual_coords', '_map_coords_1', '_map_coords_2', '_map_icon_file', 'directorypress_category_icon', 'directorypress_category_icon_for_listing', 'directorypress_category_icon_for_map', 'category-image-id', 'directorypress_category_font_icon', 'marker_color', '_elementor_data', 'user_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_hints', '_visibility', '_stock_status', '_attached_image', '_attached_image_clogo', '_attached_image_cover', '_attached_image_as_logo', '_thumbnail_id', '_attached_video_id', '_expiration_notification_sent', '_listing_status', '_preexpiration_notification_sent', '_notice_to_admin', '_listing_created', '_directory_id', '_contact_email', '_listing_faqs', 'facebook_link', 'twitter_link', 'linkedin_link', 'youtube_link', 'instagram_link', '_expiration_date', '_order_date', '_map_zoom', '_old_package_id', '_new_package_id', '_attached_image_cover_image', '_requires_moderation', '_listing_approved', 'email_verification_status', '_clicks_data', '_total_clicks', '_location_id', '_address_line_1', '_address_line_2', '_zip_or_postal_index', '_additional_info', '_manual_coords', '_map_coords_1', '_map_coords_2', '_map_icon_file', 'directorypress_category_icon', 'directorypress_category_icon_for_listing', 'directorypress_category_icon_for_map', 'category-image-id', 'directorypress_category_font_icon', 'marker_color', '_elementor_data', 'user_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_hints', '_visibility', '_stock_status', '_attached_image', '_attached_image_clogo', '_attached_image_cover', '_attached_image_as_logo', '_thumbnail_id', '_attached_video_id', '_expiration_notification_sent', '_listing_status', '_preexpiration_notification_sent', '_notice_to_admin', '_listing_created', '_directory_id', '_contact_email', '_listing_faqs', 'facebook_link', 'twitter_link', 'linkedin_link', 'youtube_link', 'instagram_link', '_expiration_date', '_order_date', '_map_zoom', '_old_package_id', '_new_package_id', '_attached_image_cover_image', '_requires_moderation', '_listing_approved', 'email_verification_status', '_clicks_data', '_total_clicks', '_location_id', '_address_line_1', '_address_line_2', '_zip_or_postal_index', '_additional_info', '_manual_coords', '_map_coords_1', '_map_coords_2', '_map_icon_file', 'directorypress_category_icon', 'directorypress_category_icon_for_listing', 'directorypress_category_icon_for_map', 'category-image-id', 'directorypress_category_font_icon', 'marker_color', '_elementor_data', 'user_phone');
DELETE FROM wp_postmeta WHERE meta_key IN ('_dynamic_styles', '_directorypress_options_build', '_directorypress_dynamic_styles', 'avatar_id', '_post_resurva_url', 'dirrater', 'dirrater_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dynamic_styles', '_directorypress_options_build', '_directorypress_dynamic_styles', 'avatar_id', '_post_resurva_url', 'dirrater', 'dirrater_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dynamic_styles', '_directorypress_options_build', '_directorypress_dynamic_styles', 'avatar_id', '_post_resurva_url', 'dirrater', 'dirrater_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dynamic_styles', '_directorypress_options_build', '_directorypress_dynamic_styles', 'avatar_id', '_post_resurva_url', 'dirrater', 'dirrater_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_max';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_max';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_max';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_max';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_range_options';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_range_options';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_range_options';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_range_options';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_option_selection';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_option_selection';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_option_selection';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_option_selection';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_frontend_currency';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_frontend_currency';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_frontend_currency';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_frontend_currency';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_listings_unlimited_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_listings_unlimited_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_listings_unlimited_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_listings_unlimited_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_listings_number_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_listings_number_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_listings_number_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_listings_number_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_renew_count_package_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_renew_count_package_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_renew_count_package_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_renew_count_package_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

