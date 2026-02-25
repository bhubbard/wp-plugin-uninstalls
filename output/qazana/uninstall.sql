-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qazana_remote_info_api_data', 'active_sitewide_plugins', 'qazana_allow_tracking', 'qazana_tracker_last_send', 'qazana_tracker_notice', '_qazana_installed_time', 'qazana_version', '_qazana_db_version', 'rewrite_rules', 'site_container_width', 'qazana_css_print_method', '_qazana_scheme_last_updated', '_qazana_settings_update_time', 'qazana_page_title_selector', 'qazana_google_maps_api_key', 'qazana_exclude_user_roles', 'retina-images', 'qazana_cpt_support', 'qazana_remote_templates_data', 'update_plugins', '_qazana_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'qazana_scheme_%';
DELETE FROM wp_options WHERE option_name LIKE 'qazana_extension_%';
DELETE FROM wp_options WHERE option_name LIKE '%_schemes';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qazana_data', '_qazana_version', '_qazana_draft_data', '_qazana_edit_mode', '_wp_page_template', '_wp_attachment_image_alt', '_qazana_css', 'rich_editing', '_thumbnail_id', '_qazana_source_image_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qazana_data', '_qazana_version', '_qazana_draft_data', '_qazana_edit_mode', '_wp_page_template', '_wp_attachment_image_alt', '_qazana_css', 'rich_editing', '_thumbnail_id', '_qazana_source_image_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qazana_data', '_qazana_version', '_qazana_draft_data', '_qazana_edit_mode', '_wp_page_template', '_wp_attachment_image_alt', '_qazana_css', 'rich_editing', '_thumbnail_id', '_qazana_source_image_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qazana_data', '_qazana_version', '_qazana_draft_data', '_qazana_edit_mode', '_wp_page_template', '_wp_attachment_image_alt', '_qazana_css', 'rich_editing', '_thumbnail_id', '_qazana_source_image_hash');

