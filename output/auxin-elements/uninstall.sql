-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auxin_show_rate_scale_notice', 'woocommerce_enable_ajax_add_to_cart', 'medium_large_size_h', 'medium_large_size_w', 'envato_purchase_code_3909293', 'skip-smush-setup', 'phlox_envato_elements_token', 'auxin_demo_options', 'auxin_last_imported_demo', 'auxin_demo_media_requests', 'mc4wp_default_form_id', 'auxin_demo_media_args', 'auxin_imported_depicter_documents', 'rp4wp_do_install', 'aux_isotope_group_templates_kit', 'sidebars_widgets', 'wp_rocket_settings', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_page_title_selector', 'elementor_allow_svg', 'elementor_active_kit', 'wpseo_titles', 'theme_mods_phlox', 'woocommerce_enable_review_rating', 'auxin_count_bundled_plugins_have_update', 'element-pack-notice-id-license-issue', 'auxels_plugin_requirements_check', 'auxpfo_plugin_requirements_check', 'auxshp_plugin_requirements_check', 'auxnew_plugin_requirements_check', 'auxpro_plugin_requirements_check', '_wc_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'aux_isotope_group_%';
DELETE FROM wp_options WHERE option_name LIKE '%_formatted_options';
DELETE FROM wp_options WHERE option_name LIKE '%_theme_options';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_license_update';
DELETE FROM wp_options WHERE option_name LIKE '%lazy_load';
DELETE FROM wp_options WHERE option_name LIKE 'auxin_demo_importer_menu_origin_id_%';
DELETE FROM wp_options WHERE option_name LIKE '%_structure';
DELETE FROM wp_options WHERE option_name LIKE '%_archive_structure';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_data', '_elementor_version', '_wp_page_template', '_elementor_template_type', 'element-pack-notice-id-license-issue', 'page_header_menu', 'auxin_import_post', 'page_header_use_legacy', 'page_elementor_header_template', 'page_elementor_header_edit_template', 'page_footer_use_legacy', 'page_elementor_footer_template', 'page_elementor_footer_edit_template', 'imported_user_id', 'auxin_import_id', '_wp_attachment_image_alt', '_elementor_page_settings', 'auxin_featured_color_enabled', 'auxin_featured_color', 'aux_page_custom_js', 'aux_show_title_bar', 'axi_gallery_image1', 'the_link', 'youtube', 'mp4', 'ogg', 'webm', 'flv', 'poster', 'skin', 'mp3', 'oga', 'audio_skin', 'soundcloud', 'the_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_data', '_elementor_version', '_wp_page_template', '_elementor_template_type', 'element-pack-notice-id-license-issue', 'page_header_menu', 'auxin_import_post', 'page_header_use_legacy', 'page_elementor_header_template', 'page_elementor_header_edit_template', 'page_footer_use_legacy', 'page_elementor_footer_template', 'page_elementor_footer_edit_template', 'imported_user_id', 'auxin_import_id', '_wp_attachment_image_alt', '_elementor_page_settings', 'auxin_featured_color_enabled', 'auxin_featured_color', 'aux_page_custom_js', 'aux_show_title_bar', 'axi_gallery_image1', 'the_link', 'youtube', 'mp4', 'ogg', 'webm', 'flv', 'poster', 'skin', 'mp3', 'oga', 'audio_skin', 'soundcloud', 'the_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_data', '_elementor_version', '_wp_page_template', '_elementor_template_type', 'element-pack-notice-id-license-issue', 'page_header_menu', 'auxin_import_post', 'page_header_use_legacy', 'page_elementor_header_template', 'page_elementor_header_edit_template', 'page_footer_use_legacy', 'page_elementor_footer_template', 'page_elementor_footer_edit_template', 'imported_user_id', 'auxin_import_id', '_wp_attachment_image_alt', '_elementor_page_settings', 'auxin_featured_color_enabled', 'auxin_featured_color', 'aux_page_custom_js', 'aux_show_title_bar', 'axi_gallery_image1', 'the_link', 'youtube', 'mp4', 'ogg', 'webm', 'flv', 'poster', 'skin', 'mp3', 'oga', 'audio_skin', 'soundcloud', 'the_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementor_data', '_elementor_version', '_wp_page_template', '_elementor_template_type', 'element-pack-notice-id-license-issue', 'page_header_menu', 'auxin_import_post', 'page_header_use_legacy', 'page_elementor_header_template', 'page_elementor_header_edit_template', 'page_footer_use_legacy', 'page_elementor_footer_template', 'page_elementor_footer_edit_template', 'imported_user_id', 'auxin_import_id', '_wp_attachment_image_alt', '_elementor_page_settings', 'auxin_featured_color_enabled', 'auxin_featured_color', 'aux_page_custom_js', 'aux_show_title_bar', 'axi_gallery_image1', 'the_link', 'youtube', 'mp4', 'ogg', 'webm', 'flv', 'poster', 'skin', 'mp3', 'oga', 'audio_skin', 'soundcloud', 'the_author');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'auxin_attachment_has_duplicate_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'auxin_attachment_has_duplicate_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'auxin_attachment_has_duplicate_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'auxin_attachment_has_duplicate_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'axi_gallery_image%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'axi_gallery_image%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'axi_gallery_image%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'axi_gallery_image%';

