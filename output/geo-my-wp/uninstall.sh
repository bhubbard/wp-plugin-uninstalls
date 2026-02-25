#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmw_version'
wp option delete 'gmw_options'
wp option delete 'gmw_addons_status'
wp option delete 'gmw_license_data'
wp option delete 'gmw_addons_data'
wp option delete 'gmw_internal_cache_status'
wp option delete 'gmw_tracking_notice'
wp option delete 'gmw_tracking_last_send'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fields'"
wp option delete 'gmw_license_keys'
wp option delete 'gmw_premium_plugin_status'
wp option delete 'gmw_old_locations_tables_exist'
wp option delete 'gmw_old_locations_tables_updated'
wp option delete 'gmw_importer_bp_xprofile_fields'
wp option delete 'gmw_importer_post_meta_fields'
wp option delete 'gmw_importer_user_meta_fields'
wp option delete 'active_sitewide_plugins'
wp option delete 'gmw_forms'
wp option delete 'gmw_forms_old'
wp option delete 'gmw_extensions_updater'
wp option delete 'gmw_addons_version'
wp option delete 'gmw_forms_table_updated'
wp option delete 'gmw_db_version'

# Delete Transients
wp transient delete 'gmw_extensions_feed'
wp transient delete 'gmw_verify_license_keys'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gmw_geocoded_%' OR option_name LIKE '_site_transient_gmw_geocoded_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_meta' OR option_name LIKE '_site_transient_%_meta'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_id' OR option_name LIKE '_site_transient_%_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gmw_user_ids_by_role_%' OR option_name LIKE '_site_transient_gmw_user_ids_by_role_%'"

# Clear Cron Jobs
wp cron event delete 'gmw_weekly_scheduled_events'
wp cron event delete 'gmw_daily_scheduled_events'
wp cron event delete 'gmw_hourly_scheduled_events'
wp cron event delete 'gmw_clear_expired_transients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppl_days_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppl_days_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppl_days_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppl_days_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmw_locations_export'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmw_locations_export'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmw_locations_export'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmw_locations_export'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmw_featured_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmw_featured_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmw_featured_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmw_featured_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'select_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'select_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'select_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'select_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_ps_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_ps_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_ps_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_ps_options'"
