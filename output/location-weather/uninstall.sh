#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'location_weather_settings'
wp option delete 'sp_ua_site_type'
wp option delete 'splw_allow_anonymous_data'
wp option delete 'splw_blocks_visibility_options'
wp option delete 'splw_setup_wizard_visited'
wp option delete 'location_weather_db_version'
wp option delete 'widget_block'
wp option delete 'splw_ignored_consent_notice'
wp option delete 'splw_consent_notice_start_time'
wp option delete 'location_weather_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp option delete 'location_weather_version'
wp option delete 'location_weather_first_version'
wp option delete 'location_weather_activation_date'
wp option delete '_sp_options'
wp option delete 'splw_blocks_custom_colors_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_spl_weather_widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_spl_weather_fonts_widget_%'"
wp option delete 'location_weather_premade_wishlist'
wp option delete 'splw_default_call'
wp option delete 'splw_weather_api_default_call'
wp option delete 'splw_site_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sp_lw_page_id%'"

# Delete Transients
wp transient delete 'splw_changelogs'
wp transient delete 'splw_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__spl_weather_preview_%' OR option_name LIKE '_site_transient__spl_weather_preview_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__spl_weather_preview_fonts_%' OR option_name LIKE '_site_transient__spl_weather_preview_fonts_%'"

# Clear Cron Jobs
wp cron event delete 'location_weather_weekly_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_location_weather_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_location_weather_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_location_weather_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_location_weather_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_location_weather_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_location_weather_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_location_weather_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_location_weather_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spl_weather_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spl_weather_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spl_weather_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spl_weather_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_splwt_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_splwt_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_splwt_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_splwt_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spl_weather_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spl_weather_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spl_weather_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spl_weather_fonts'"
