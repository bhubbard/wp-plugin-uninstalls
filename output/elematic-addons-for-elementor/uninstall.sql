-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_cpt_support', 'elematic_activation_redirect', 'elematic_svg_shapes_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elematic_priority', '_elematic_conditions', '_elementor_template_type', '_wp_page_template', '_elementor_data', '_elementor_edit_mode', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elematic_priority', '_elematic_conditions', '_elementor_template_type', '_wp_page_template', '_elementor_data', '_elementor_edit_mode', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elematic_priority', '_elematic_conditions', '_elementor_template_type', '_wp_page_template', '_elementor_data', '_elementor_edit_mode', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elematic_priority', '_elematic_conditions', '_elementor_template_type', '_wp_page_template', '_elementor_data', '_elementor_edit_mode', '_wp_attachment_image_alt');

