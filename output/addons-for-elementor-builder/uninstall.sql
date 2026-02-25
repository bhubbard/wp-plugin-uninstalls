-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_disable_color_schemes', 'elementor_disable_typography_schemes', '_afeb_activation_redirect', 'afeb-widgets-status', 'afeb-3rdpt-widgets-status', 'elementor_active_kit', 'afeb-extensions-status', '_afebp_ajax_verify_recaptcha', 'afeb-settings', 'st_attachments', '_afeb_installation_time', '_afeb_todo_flush');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_afeb_document_type', '_elementor_template_type', '_elementor_page_settings', 'afeb_page_id', 'afeb_form_id', 'afeb_form_fields', 'afeb_form_name', 'afeb_user_ip', 'afeb_user_agent', '_elementor_edit_mode', '_afeb_demo_import_item', '_menu_item_menu_item_parent', '_thumbnail_id', 'afeb_advanced_menu_activation', 'afeb_advanced_menu_icon', '_wp_attachment_metadata', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_afeb_document_type', '_elementor_template_type', '_elementor_page_settings', 'afeb_page_id', 'afeb_form_id', 'afeb_form_fields', 'afeb_form_name', 'afeb_user_ip', 'afeb_user_agent', '_elementor_edit_mode', '_afeb_demo_import_item', '_menu_item_menu_item_parent', '_thumbnail_id', 'afeb_advanced_menu_activation', 'afeb_advanced_menu_icon', '_wp_attachment_metadata', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_afeb_document_type', '_elementor_template_type', '_elementor_page_settings', 'afeb_page_id', 'afeb_form_id', 'afeb_form_fields', 'afeb_form_name', 'afeb_user_ip', 'afeb_user_agent', '_elementor_edit_mode', '_afeb_demo_import_item', '_menu_item_menu_item_parent', '_thumbnail_id', 'afeb_advanced_menu_activation', 'afeb_advanced_menu_icon', '_wp_attachment_metadata', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_afeb_document_type', '_elementor_template_type', '_elementor_page_settings', 'afeb_page_id', 'afeb_form_id', 'afeb_form_fields', 'afeb_form_name', 'afeb_user_ip', 'afeb_user_agent', '_elementor_edit_mode', '_afeb_demo_import_item', '_menu_item_menu_item_parent', '_thumbnail_id', 'afeb_advanced_menu_activation', 'afeb_advanced_menu_icon', '_wp_attachment_metadata', 'thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_elementor_settings_for_preview_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_elementor_settings_for_preview_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_elementor_settings_for_preview_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_elementor_settings_for_preview_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_elementor_settings_for_editor_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_elementor_settings_for_editor_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_elementor_settings_for_editor_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_elementor_settings_for_editor_%';

