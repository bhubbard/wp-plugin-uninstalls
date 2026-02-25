-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmmcc_plugin_locale', 'wpmmcc_ml_enable_hreflang', 'wpmmcc_ml_enable_canonical', 'wpmmcc_logging_enabled', 'wpmmcc_ml_network_mode', 'wpmmcc_ml_network_source_blog_id', 'wpmmcc_ml_deleted_target_behavior', 'wpmmcc_keep_data_on_uninstall', 'wpmmcc_ml_sitemap_xml_fields', 'wpmmcc_ml_sitemap_rewrite_version', 'wpmmcc_db_version', 'wpmmcc_ml_shared_settings', 'sidebars_widgets', 'settings_errors', 'wpmmcc_activation_conflict_notice', 'wpmmcc_deactivation_warning');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpmmcc_ml_site_id', '_wp_attachment_image_alt', '_wpmmcc_ml_source_term', '_wp_attached_file', '_wp_attachment_metadata', '_wpmmcc_ml_source_media', '_wpmmcc_ml_source_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpmmcc_ml_site_id', '_wp_attachment_image_alt', '_wpmmcc_ml_source_term', '_wp_attached_file', '_wp_attachment_metadata', '_wpmmcc_ml_source_media', '_wpmmcc_ml_source_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpmmcc_ml_site_id', '_wp_attachment_image_alt', '_wpmmcc_ml_source_term', '_wp_attached_file', '_wp_attachment_metadata', '_wpmmcc_ml_source_media', '_wpmmcc_ml_source_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpmmcc_ml_site_id', '_wp_attachment_image_alt', '_wpmmcc_ml_source_term', '_wp_attached_file', '_wp_attachment_metadata', '_wpmmcc_ml_source_media', '_wpmmcc_ml_source_post');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_media_alt_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_media_alt_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_media_alt_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_media_alt_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_media_caption_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_media_caption_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_media_caption_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_media_caption_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_title_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_title_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_title_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_title_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_content_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_content_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_content_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_content_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_excerpt_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_excerpt_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_excerpt_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_excerpt_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_description_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_description_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_description_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_description_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_media_title_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_media_title_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_media_title_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_media_title_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_media_description_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_media_description_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_media_description_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_media_description_%';

