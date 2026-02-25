-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('publishpress_checklists_checklists_options', 'publishpress_checklists_settings_options', 'classic-editor-replace', 'publishpress_checklist_options', 'wpb_js_gutenberg_disable', 'ppch_activated', 'active_sitewide_plugins', 'ppch_reset_labels_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_image_caption', '_elementor_edit_mode', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_content_score', '_yoast_wpseo_linkdex');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_image_caption', '_elementor_edit_mode', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_content_score', '_yoast_wpseo_linkdex');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_image_caption', '_elementor_edit_mode', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_content_score', '_yoast_wpseo_linkdex');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_image_caption', '_elementor_edit_mode', '_yoast_wpseo_focuskw', '_yoast_wpseo_metadesc', '_yoast_wpseo_content_score', '_yoast_wpseo_linkdex');

