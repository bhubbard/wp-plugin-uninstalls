#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dummy_post_data_created'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete '_wpspeedo_team_installed_time'
wp option delete 'wpspeedo_team_dummy_post_data_created'
wp option delete 'wpspeedo_team_dummy_shortcode_data_created'
wp option delete '_wps_team_installed_time'
wp option delete 'wps_team_version'
wp option delete 'wps_team_is_pro_active'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_dummy_terms' OR option_name LIKE '_site_transient_%_dummy_terms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_dummy_attachments' OR option_name LIKE '_site_transient_%_dummy_attachments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_dummy_posts' OR option_name LIKE '_site_transient_%_dummy_posts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_dummy_post_data_creating' OR option_name LIKE '_site_transient_%_dummy_post_data_creating'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'wps_team_csv_rows'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_telephone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_telephone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_telephone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_telephone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%--dummy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%--dummy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%--dummy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%--dummy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_team_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_team_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_team_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_team_import_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_social_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_social_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_social_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_social_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
