#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'gsteam_dummy_team_data_created'
wp option delete 'gsteam_dummy_shortcode_data_created'
wp option delete 'gs_team_autoimport_done'
wp option delete 'gs_team_plugin_version'
wp option delete 'GS_Team_plugin_permalinks_flushed'
wp option delete 'gs_team_filters_order'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'gs_team_bulk_import_rows'
wp transient delete 'gsteam_dummy_team_data_creating'
wp transient delete 'gsteam_dummy_shortcode_data_creating'
wp transient delete 'gsteam_dummy_attachments'
wp transient delete 'gsteam_dummy_members'
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_des'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_des'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_des'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_des'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsteam-demo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsteam-demo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsteam-demo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsteam-demo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_custom_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_custom_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_custom_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_custom_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_bcc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_bcc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_bcc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_bcc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_social'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_social'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_social'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_social'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_skill'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_skill'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_skill'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_skill'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_team_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_team_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_team_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_team_import_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_com'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_com'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_com'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_com'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_com_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_com_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_com_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_com_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_land'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_land'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_land'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_land'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_cell'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_cell'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_cell'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_cell'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_ribon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_ribon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_ribon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_ribon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_zip_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_zip_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_zip_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_zip_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_vcard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_vcard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_vcard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_vcard'"
