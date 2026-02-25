-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('location_weather_settings', 'sp_ua_site_type', 'splw_allow_anonymous_data', 'splw_blocks_visibility_options', 'splw_setup_wizard_visited', 'location_weather_db_version', 'widget_block', 'splw_ignored_consent_notice', 'splw_consent_notice_start_time', 'location_weather_review_notice_dismiss', 'location_weather_version', 'location_weather_first_version', 'location_weather_activation_date', '_sp_options', 'splw_blocks_custom_colors_options', 'location_weather_premade_wishlist', 'splw_default_call', 'splw_weather_api_default_call', 'splw_site_type', 'splw_changelogs', 'splw_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE '_spl_weather_widget_%';
DELETE FROM wp_options WHERE option_name LIKE '_spl_weather_fonts_widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'sp_lw_page_id%';
DELETE FROM wp_options WHERE option_name LIKE '_spl_weather_preview_%';
DELETE FROM wp_options WHERE option_name LIKE '_spl_weather_preview_fonts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_location_weather_generator', 'sp_location_weather_layout', '_spl_weather_css', '_spl_weather_fonts');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_location_weather_generator', 'sp_location_weather_layout', '_spl_weather_css', '_spl_weather_fonts');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_location_weather_generator', 'sp_location_weather_layout', '_spl_weather_css', '_spl_weather_fonts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_location_weather_generator', 'sp_location_weather_layout', '_spl_weather_css', '_spl_weather_fonts');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_splwt_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_splwt_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_splwt_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_splwt_errors_%';

