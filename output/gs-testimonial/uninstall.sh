#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'gstm_dummy_items_data_created'
wp option delete 'gstm_dummy_shortcode_data_created'
wp option delete 'gs_testimonial_autoimport_done'
wp option delete 'gstm_dismiss_demo_data_notice'
wp option delete 'gs_testimonial_plugin_version'
wp option delete 'gs_testimonial_plugin_permalinks_flushed'
wp option delete 'gstm_shortcode_prefs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gstm_card_visibility_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gstm_popup_visibility_order_%'"
wp option delete 'gsp_terms_table_altered'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'gstm_dummy_items_data_creating'
wp transient delete 'gstm_dummy_shortcode_data_creating'
wp transient delete 'gstm_dummy_terms'
wp transient delete 'gstm_dummy_attachments'
wp transient delete 'gstm_dummy_items'
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_client_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_client_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_client_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_client_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_client_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_client_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_client_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_client_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gstm-demo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gstm-demo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gstm-demo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gstm-demo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rudr_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rudr_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rudr_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rudr_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'second_featured_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_tm_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_tm_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_tm_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_tm_import_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_social_profiles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_social_profiles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_social_profiles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_social_profiles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_client_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_client_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_client_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_client_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_client_email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_client_email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_client_email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_client_email_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_client_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_client_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_client_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_client_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_t_website_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_t_website_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_t_website_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_t_website_url'"
