#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gsportfolio_dummy_data_created'
wp option delete 'gsportfolio_dummy_shortcode_data_created'
wp option delete 'gs_portfolio_autoimport_done'
wp option delete 'gsportfolio_activation_redirect'
wp option delete 'gsportfolio_active_time'
wp option delete 'gsportfolio_maybe_later'
wp option delete 'gsadmin_maybe_later'
wp option delete 'gs_portfolio_permalinks_flushed'
wp option delete 'gs_portfolio_plugin_version'
wp option delete 'gsp_terms_table_altered'

# Delete Transients
wp transient delete 'gsportfolio_dummy_data_creating'
wp transient delete 'gsportfolio_dummy_shortcode_data_creating'
wp transient delete 'gsportfolio_dummy_terms'
wp transient delete 'gsportfolio_dummy_attachments'
wp transient delete 'gsportfolio_dummy_portfolios'
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsportfolio-demo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsportfolio-demo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsportfolio-demo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsportfolio-demo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_audio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_audio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_audio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_audio_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_portfolio_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_portfolio_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_portfolio_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_portfolio_import_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_skills'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_skills'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_skills'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_skills'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_additional_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_additional_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_additional_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_additional_data'"
