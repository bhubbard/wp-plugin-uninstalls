-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_yeepdf_dropbox_api_token', '_yeepdf_dropbox_api_token_refresh_token', 'pdf_creator_dropbox_token', 'pdf_creator_dropbox_token_secret', 'pdf_custom_fonts', '_yeepdf_woocommerce_demo', 'pdf_creator_save_folder', 'pdf_creator_save_random', 'pdf_creator_papers', 'pdf_creator_save_pdf', 'pdf_download_last', 'woocommerce_pdf_name', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_store_postcode', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'ninja_forms_addons_feed', 'yeekit_addons');
DELETE FROM wp_options WHERE option_name LIKE 'yeepdf_woo_save_dropbox_%';
DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'yeekit_addons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('data_email', 'data_email_email', '_builder_pdf_settings', '_builder_pdf_settings_font_family');
DELETE FROM wp_usermeta WHERE meta_key IN ('data_email', 'data_email_email', '_builder_pdf_settings', '_builder_pdf_settings_font_family');
DELETE FROM wp_termmeta WHERE meta_key IN ('data_email', 'data_email_email', '_builder_pdf_settings', '_builder_pdf_settings_font_family');
DELETE FROM wp_commentmeta WHERE meta_key IN ('data_email', 'data_email_email', '_builder_pdf_settings', '_builder_pdf_settings_font_family');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';

