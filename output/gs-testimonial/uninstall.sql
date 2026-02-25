-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'gstm_dummy_items_data_created', 'gstm_dummy_shortcode_data_created', 'gs_testimonial_autoimport_done', 'gstm_dismiss_demo_data_notice', 'gs_testimonial_plugin_version', 'gs_testimonial_plugin_permalinks_flushed', 'gstm_shortcode_prefs', 'gsp_terms_table_altered', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'gstm_dummy_items_data_creating', 'gstm_dummy_shortcode_data_creating', 'gstm_dummy_terms', 'gstm_dummy_attachments', 'gstm_dummy_items', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'gstm_card_visibility_%';
DELETE FROM wp_options WHERE option_name LIKE 'gstm_popup_visibility_order_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gs_t_client_name', 'gs_t_client_company', 'gs_t_client_design', 'gs_t_rating', 'gstm-demo_data', '_thumbnail_id', 'rudr_img', 'second_featured_img', '_wp_attachment_image_alt', '_gs_tm_import_id', 'gs_t_social_profiles', 'gs_t_client_phone', 'gs_t_client_email_address', 'gs_t_client_location', 'gs_t_website_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('gs_t_client_name', 'gs_t_client_company', 'gs_t_client_design', 'gs_t_rating', 'gstm-demo_data', '_thumbnail_id', 'rudr_img', 'second_featured_img', '_wp_attachment_image_alt', '_gs_tm_import_id', 'gs_t_social_profiles', 'gs_t_client_phone', 'gs_t_client_email_address', 'gs_t_client_location', 'gs_t_website_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('gs_t_client_name', 'gs_t_client_company', 'gs_t_client_design', 'gs_t_rating', 'gstm-demo_data', '_thumbnail_id', 'rudr_img', 'second_featured_img', '_wp_attachment_image_alt', '_gs_tm_import_id', 'gs_t_social_profiles', 'gs_t_client_phone', 'gs_t_client_email_address', 'gs_t_client_location', 'gs_t_website_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gs_t_client_name', 'gs_t_client_company', 'gs_t_client_design', 'gs_t_rating', 'gstm-demo_data', '_thumbnail_id', 'rudr_img', 'second_featured_img', '_wp_attachment_image_alt', '_gs_tm_import_id', 'gs_t_social_profiles', 'gs_t_client_phone', 'gs_t_client_email_address', 'gs_t_client_location', 'gs_t_website_url');

