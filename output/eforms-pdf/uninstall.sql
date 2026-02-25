-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninja_forms_addons_feed', 'pdf_custom_fonts', 'pdf_creator_papers', 'pdf_creator_font', 'pdf_download_last', '_redmuber_item_1695', 'woocommerce_pdf_packing', 'woocommerce_pdf', 'yeekit_addons');
DELETE FROM wp_options WHERE option_name LIKE 'crm_marketing_%';
DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'yeekit_addons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('data_email', '_builder_pdf_settings_font_family', '_builder_pdf_settings', 'data_email_email', '_pdfcreator_eform');
DELETE FROM wp_usermeta WHERE meta_key IN ('data_email', '_builder_pdf_settings_font_family', '_builder_pdf_settings', 'data_email_email', '_pdfcreator_eform');
DELETE FROM wp_termmeta WHERE meta_key IN ('data_email', '_builder_pdf_settings_font_family', '_builder_pdf_settings', 'data_email_email', '_pdfcreator_eform');
DELETE FROM wp_commentmeta WHERE meta_key IN ('data_email', '_builder_pdf_settings_font_family', '_builder_pdf_settings', 'data_email_email', '_pdfcreator_eform');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';

