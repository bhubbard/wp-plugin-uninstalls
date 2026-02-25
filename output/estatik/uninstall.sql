-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('estatik-banners', 'es_migration_paged', 'es_migrations', 'es_mls_fields_migrated', 'es_is_demo_executed', 'es_google_fonts', 'es_migration_executed', 'es_migration_0', 'es_flush_executed');
DELETE FROM wp_options WHERE option_name LIKE 'es_%';
DELETE FROM wp_options WHERE option_name LIKE 'es_flash_%';
DELETE FROM wp_options WHERE option_name LIKE 'countryCode_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('auth_facebook', 'auth_google', 'type', 'es_property_postal_code', 'parent_component', 'es_font_family', 'es_font_style', 'es_post_content_copied', 'es_default_term', 'es_color', 'es_icon', 'es_attachment_order', 'es_attachment_type', 'es_property_video', 'es_property_address_components', 'es_buyer_name', 'es_name', 'es_buyer_profile_attachment_id', 'es_avatar_id', 'es_pll_attachments_migrated', '_wp_attachment_metadata', 'esf_file_type', '_elementor_edit_mode', '_et_pb_property_page_layout', '_et_pb_use_builder', 'es_is_deactivated_term', 'es_property_keywords', 'es_property_video_iframe', 'es_property_video_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('auth_facebook', 'auth_google', 'type', 'es_property_postal_code', 'parent_component', 'es_font_family', 'es_font_style', 'es_post_content_copied', 'es_default_term', 'es_color', 'es_icon', 'es_attachment_order', 'es_attachment_type', 'es_property_video', 'es_property_address_components', 'es_buyer_name', 'es_name', 'es_buyer_profile_attachment_id', 'es_avatar_id', 'es_pll_attachments_migrated', '_wp_attachment_metadata', 'esf_file_type', '_elementor_edit_mode', '_et_pb_property_page_layout', '_et_pb_use_builder', 'es_is_deactivated_term', 'es_property_keywords', 'es_property_video_iframe', 'es_property_video_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('auth_facebook', 'auth_google', 'type', 'es_property_postal_code', 'parent_component', 'es_font_family', 'es_font_style', 'es_post_content_copied', 'es_default_term', 'es_color', 'es_icon', 'es_attachment_order', 'es_attachment_type', 'es_property_video', 'es_property_address_components', 'es_buyer_name', 'es_name', 'es_buyer_profile_attachment_id', 'es_avatar_id', 'es_pll_attachments_migrated', '_wp_attachment_metadata', 'esf_file_type', '_elementor_edit_mode', '_et_pb_property_page_layout', '_et_pb_use_builder', 'es_is_deactivated_term', 'es_property_keywords', 'es_property_video_iframe', 'es_property_video_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('auth_facebook', 'auth_google', 'type', 'es_property_postal_code', 'parent_component', 'es_font_family', 'es_font_style', 'es_post_content_copied', 'es_default_term', 'es_color', 'es_icon', 'es_attachment_order', 'es_attachment_type', 'es_property_video', 'es_property_address_components', 'es_buyer_name', 'es_name', 'es_buyer_profile_attachment_id', 'es_avatar_id', 'es_pll_attachments_migrated', '_wp_attachment_metadata', 'esf_file_type', '_elementor_edit_mode', '_et_pb_property_page_layout', '_et_pb_use_builder', 'es_is_deactivated_term', 'es_property_keywords', 'es_property_video_iframe', 'es_property_video_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'auth_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'auth_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'auth_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'auth_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'es_property_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'es_property_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'es_property_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'es_property_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'es_property_sort_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'es_property_sort_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'es_property_sort_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'es_property_sort_%';

