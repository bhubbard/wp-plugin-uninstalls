#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geo_mashup_db_version'
wp option delete 'geo_mashup_activation_log'
wp option delete 'geo_locations'
wp option delete 'google_api_key'
wp option delete 'geo_mashup_options'
wp option delete 'geo_mashup_temp_kml_url'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'gm_uploaded_kml_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gmm%' OR option_name LIKE '_site_transient_gmm%'"
wp transient delete 'geo_mashup_test'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geocoding_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geocoding_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geocoding_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geocoding_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_geo_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_geo_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_geo_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_geo_converted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_mashup_save_location_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_mashup_save_location_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_mashup_save_location_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_mashup_save_location_error'"
