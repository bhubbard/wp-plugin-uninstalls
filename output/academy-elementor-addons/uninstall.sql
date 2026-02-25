-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('academyea_required_rewrite_flush', 'academyea_version', 'academyea_first_install_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('academyea_template_meta_type', '_wp_page_template', '_elementor_data', '_elementor_template_type', '_elementor_edit_mode', '_elementor_page_settings', 'academy_course_benefits', 'academy_course_difficulty_level', 'academy_course_materials_included', 'academy_course_requirements', 'academy_course_audience');
DELETE FROM wp_usermeta WHERE meta_key IN ('academyea_template_meta_type', '_wp_page_template', '_elementor_data', '_elementor_template_type', '_elementor_edit_mode', '_elementor_page_settings', 'academy_course_benefits', 'academy_course_difficulty_level', 'academy_course_materials_included', 'academy_course_requirements', 'academy_course_audience');
DELETE FROM wp_termmeta WHERE meta_key IN ('academyea_template_meta_type', '_wp_page_template', '_elementor_data', '_elementor_template_type', '_elementor_edit_mode', '_elementor_page_settings', 'academy_course_benefits', 'academy_course_difficulty_level', 'academy_course_materials_included', 'academy_course_requirements', 'academy_course_audience');
DELETE FROM wp_commentmeta WHERE meta_key IN ('academyea_template_meta_type', '_wp_page_template', '_elementor_data', '_elementor_template_type', '_elementor_edit_mode', '_elementor_page_settings', 'academy_course_benefits', 'academy_course_difficulty_level', 'academy_course_materials_included', 'academy_course_requirements', 'academy_course_audience');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type';

