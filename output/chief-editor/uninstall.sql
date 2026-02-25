-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chiefed_post_taxonomies', 'chiefed_default_type', 'chiefed_chiefeditor_option', 'chief_editor_option', 'chiefed_shots_cpt_name', 'email_recipients', 'chiefed_sender_email', 'chiefed_sender_name', 'sender_email', 'sender_name', 'email_content-textarea', 'custom_stats_start_date', 'custom_stats_end_date', 'checkbox_element_callback', 'BlogMetricsOptions', 'chiefed_xml_exports_path_search', 'chiefed_xml_exports_path_replace', 'chiefed_wwf_statuses_and_colors', 'chiefed_pwf_statuses_and_colors', 'chiefed_categories_and_colors', 'chiefed_time_filters', 'chiefed_xml_exports_enabled', 'chiefed_xml_exports_dir', 'chiefed_manager_email_template', 'chiefed_enable_notifications');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_custom_attachment', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_custom_attachment', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_custom_attachment', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_custom_attachment', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'informations_complmentaires_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'informations_complmentaires_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'informations_complmentaires_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'informations_complmentaires_%';

