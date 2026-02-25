-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbakery_to_elementor_options', 'wpbakery_to_elementor_placeholder_image_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('site-content-layout', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_elementor_data', '_cwte_attachment');
DELETE FROM wp_usermeta WHERE meta_key IN ('site-content-layout', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_elementor_data', '_cwte_attachment');
DELETE FROM wp_termmeta WHERE meta_key IN ('site-content-layout', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_elementor_data', '_cwte_attachment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('site-content-layout', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_elementor_data', '_cwte_attachment');

