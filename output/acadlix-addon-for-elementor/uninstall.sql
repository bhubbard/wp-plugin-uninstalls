-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acadlix_single_course_elementor_template', 'acadlix_all_course_elementor_template');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', 'description');

