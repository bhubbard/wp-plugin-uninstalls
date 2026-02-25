-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formation_db_version', 'formation_options', 'formation_settings', 'formation_activation_redirect', 'formation_pro_status', 'formation_smtp_settings', 'formation_pmf_options', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('formation_tooltip_stat', 'formation_data', 'formation_other_plugin', 'formation_form_status', 'formation_fe_style', 'formation_prefix_classes', 'formation_views', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('formation_tooltip_stat', 'formation_data', 'formation_other_plugin', 'formation_form_status', 'formation_fe_style', 'formation_prefix_classes', 'formation_views', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('formation_tooltip_stat', 'formation_data', 'formation_other_plugin', 'formation_form_status', 'formation_fe_style', 'formation_prefix_classes', 'formation_views', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('formation_tooltip_stat', 'formation_data', 'formation_other_plugin', 'formation_form_status', 'formation_fe_style', 'formation_prefix_classes', 'formation_views', '_wp_attachment_image_alt');

