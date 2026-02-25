#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%week_start'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_24_hours_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_closed_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_closed_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_closure'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_consolidation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_consolidation_labels'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_styles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_day_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_day_format_special'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_everyday_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_places_api'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_result'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_sync_frequency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_javascript'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_initial_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_language'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_midday_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_midnight_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notifications'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_place_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_price_range'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_regular'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_retrieval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_section'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_special'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_special_cut_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_structured_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stylesheet'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_telephone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time_group_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_day_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_day_range_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_day_range_suffix'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_day_range_suffix_special'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_week_start'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_weekdays'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_weekdays_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_weekend'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_weekend_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_force'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%day_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%day_format_special'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%time_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%time_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%closed_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%weekdays'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%weekend'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%consolidation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%stylesheet'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%javascript'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%structured_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%google_sync_frequency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%section'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%place_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%google_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%telephone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%business_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%price_range'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%time_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%time_group_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%day_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%day_range_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%day_range_suffix'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%day_range_suffix_special'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%closed_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%midday_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%midnight_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%24_hours_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%weekdays_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%weekend_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%everyday_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custom_styles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%google_result'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%regular'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%closure'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%special'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%special_cut_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%google_places_api'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%language'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%retrieval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%force'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%consolidation_labels'"
wp option delete 'wpseo_titles'
wp option delete 'google_business_reviews_rating_api_key'
wp option delete 'google_business_reviews_rating_place_id'
wp option delete 'grw_google_api_key'
wp option delete 'wpfbr_google_options'
wp option delete 'googleplacesreviews_options'
wp option delete 'google_places_api_key'
wp option delete 'day_format'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%initial_version'"
wp option delete 'we_are_open_time_format'
wp option delete 'we_are_open_day_format'
wp option delete 'we_are_open_time_type'
wp option delete 'we_are_open_day_format_special'
wp option delete 'we_are_open_week_start'
wp option delete 'we_are_open_weekdays'
wp option delete 'we_are_open_weekend'
wp option delete 'we_are_open_consolidation'
wp option delete 'we_are_open_closed_show'
wp option delete 'we_are_open_stylesheet'
wp option delete 'we_are_open_javascript'
wp option delete 'we_are_open_place_id'
wp option delete 'we_are_open_api_key'
wp option delete 'we_are_open_structured_data'
wp option delete 'we_are_open_name'
wp option delete 'we_are_open_address'
wp option delete 'we_are_open_telephone'
wp option delete 'we_are_open_business_type'
wp option delete 'we_are_open_price_range'
wp option delete 'we_are_open_logo'
wp option delete 'we_are_open_google_sync'
wp option delete 'we_are_open_time_separator'
wp option delete 'we_are_open_time_group_separator'
wp option delete 'we_are_open_day_separator'
wp option delete 'we_are_open_day_range_separator'
wp option delete 'we_are_open_day_range_suffix'
wp option delete 'we_are_open_day_range_suffix_special'
wp option delete 'we_are_open_weekdays_text'
wp option delete 'we_are_open_weekend_text'
wp option delete 'we_are_open_everyday_text'
wp option delete 'we_are_open_24_hours_text'
wp option delete 'we_are_open_midday_text'
wp option delete 'we_are_open_midnight_text'
wp option delete 'we_are_open_closed_text'
wp option delete 'we_are_open_custom_styles'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_offset_changes' OR option_name LIKE '_site_transient_%_offset_changes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%offset_changes' OR option_name LIKE '_site_transient_%offset_changes'"

# Clear Cron Jobs
wp cron event delete 'we_are_open_run'

