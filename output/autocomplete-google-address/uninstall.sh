#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Nish_aga_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'aga_activation_notice'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_activate_globally'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_activate_globally'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_activate_globally'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_activate_globally'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_main_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_main_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_main_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_main_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_country_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_country_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_country_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_country_restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_language_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_language_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_language_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_language_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_lat_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_lat_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_lat_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_lat_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_lng_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_lng_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_lng_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_lng_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_place_id_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_place_id_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_place_id_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_place_id_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_street_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_street_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_street_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_street_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_city_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_city_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_city_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_city_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_state_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_state_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_state_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_state_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_zip_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_zip_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_zip_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_zip_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_country_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_country_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_country_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_country_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_map_lat_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_map_lat_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_map_lat_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_map_lat_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_map_lng_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_map_lng_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_map_lng_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_map_lng_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_smart_place_id_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_smart_place_id_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_smart_place_id_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_smart_place_id_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_state_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_state_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_state_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_state_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_country_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_country_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_country_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_country_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nish_aga_load_on_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nish_aga_load_on_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nish_aga_load_on_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nish_aga_load_on_pages'"
