-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_yeepdf_dropbox_api_token', '_yeepdf_dropbox_api_token_refresh_token', 'pdf_creator_dropbox_token', 'pdf_creator_dropbox_token_secret', 'pdf_custom_fonts', '_yeepdf_woocommerce_demo', 'pdf_creator_save_folder', 'pdf_creator_save_random', 'pdf_creator_papers', 'pdf_creator_save_pdf', 'pdf_download_last', 'yeepdf_elementor_forms_setup', 'gform_email_count', 'gform_api_count', 'rg_gforms_message', 'rg_gforms_key', 'gform_version_info', 'rg_gforms_currency', 'rg_gforms_enable_akismet', 'gform_upload_page_slug', 'yeepdf_gravity_forms_setup', 'download_link_pdf_gf', 'ninja_forms_addons_feed', 'yeekit_addons');
DELETE FROM wp_options WHERE option_name LIKE 'gf_save_dropbox_%';
DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'yeekit_addons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('data_email', 'data_email_email', '_builder_pdf_settings', '_builder_pdf_settings_font_family', '_pdfcreator_formwidget', '_pdfcreator_formwidget_entry', '_elementor_data', '_wp_attachment_image_alt', '_yeepdf_gravity_forms');
DELETE FROM wp_usermeta WHERE meta_key IN ('data_email', 'data_email_email', '_builder_pdf_settings', '_builder_pdf_settings_font_family', '_pdfcreator_formwidget', '_pdfcreator_formwidget_entry', '_elementor_data', '_wp_attachment_image_alt', '_yeepdf_gravity_forms');
DELETE FROM wp_termmeta WHERE meta_key IN ('data_email', 'data_email_email', '_builder_pdf_settings', '_builder_pdf_settings_font_family', '_pdfcreator_formwidget', '_pdfcreator_formwidget_entry', '_elementor_data', '_wp_attachment_image_alt', '_yeepdf_gravity_forms');
DELETE FROM wp_commentmeta WHERE meta_key IN ('data_email', 'data_email_email', '_builder_pdf_settings', '_builder_pdf_settings_font_family', '_pdfcreator_formwidget', '_pdfcreator_formwidget_entry', '_elementor_data', '_wp_attachment_image_alt', '_yeepdf_gravity_forms');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';

