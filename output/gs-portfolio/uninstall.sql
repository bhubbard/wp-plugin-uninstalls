-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsportfolio_dummy_data_created', 'gsportfolio_dummy_shortcode_data_created', 'gs_portfolio_autoimport_done', 'gsportfolio_activation_redirect', 'gsportfolio_active_time', 'gsportfolio_maybe_later', 'gsadmin_maybe_later', 'gs_portfolio_permalinks_flushed', 'gs_portfolio_plugin_version', 'gsp_terms_table_altered', 'gsportfolio_dummy_data_creating', 'gsportfolio_dummy_shortcode_data_creating', 'gsportfolio_dummy_terms', 'gsportfolio_dummy_attachments', 'gsportfolio_dummy_portfolios', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('client_url', 'gsportfolio-demo_data', '_thumbnail_id', 'gsp_video_url', 'gsp_audio_url', 'gsp_gallery', 'gsp_media', '_gs_portfolio_import_id', '_wp_attachment_image_alt', 'gsp_subtitle', 'gsp_client_name', 'start_date', 'end_date', 'wp_editor', 'gsp_skills', 'status', 'gsp_additional_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('client_url', 'gsportfolio-demo_data', '_thumbnail_id', 'gsp_video_url', 'gsp_audio_url', 'gsp_gallery', 'gsp_media', '_gs_portfolio_import_id', '_wp_attachment_image_alt', 'gsp_subtitle', 'gsp_client_name', 'start_date', 'end_date', 'wp_editor', 'gsp_skills', 'status', 'gsp_additional_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('client_url', 'gsportfolio-demo_data', '_thumbnail_id', 'gsp_video_url', 'gsp_audio_url', 'gsp_gallery', 'gsp_media', '_gs_portfolio_import_id', '_wp_attachment_image_alt', 'gsp_subtitle', 'gsp_client_name', 'start_date', 'end_date', 'wp_editor', 'gsp_skills', 'status', 'gsp_additional_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('client_url', 'gsportfolio-demo_data', '_thumbnail_id', 'gsp_video_url', 'gsp_audio_url', 'gsp_gallery', 'gsp_media', '_gs_portfolio_import_id', '_wp_attachment_image_alt', 'gsp_subtitle', 'gsp_client_name', 'start_date', 'end_date', 'wp_editor', 'gsp_skills', 'status', 'gsp_additional_data');

