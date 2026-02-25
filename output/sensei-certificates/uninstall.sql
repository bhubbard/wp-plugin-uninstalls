-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sensei-settings', 'woothemes-sensei-version', 'sensei-version', 'sensei_certificates_version', 'sensei_certificate_user_data_installer', 'sensei_certificate_templates_installer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_certificate_font_color', '_certificate_font_size', '_certificate_font_family', '_certificate_font_style', '_certificate_template_fields', '_image_ids', '_course_certificate_template', 'course_id', 'learner_id', 'certificate_hash', '_lesson_course');
DELETE FROM wp_usermeta WHERE meta_key IN ('_certificate_font_color', '_certificate_font_size', '_certificate_font_family', '_certificate_font_style', '_certificate_template_fields', '_image_ids', '_course_certificate_template', 'course_id', 'learner_id', 'certificate_hash', '_lesson_course');
DELETE FROM wp_termmeta WHERE meta_key IN ('_certificate_font_color', '_certificate_font_size', '_certificate_font_family', '_certificate_font_style', '_certificate_template_fields', '_image_ids', '_course_certificate_template', 'course_id', 'learner_id', 'certificate_hash', '_lesson_course');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_certificate_font_color', '_certificate_font_size', '_certificate_font_family', '_certificate_font_style', '_certificate_template_fields', '_image_ids', '_course_certificate_template', 'course_id', 'learner_id', 'certificate_hash', '_lesson_course');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_family';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_family';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_family';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_family';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_size';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_size';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_size';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_size';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_font_style';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_font_style';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_font_style';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_font_style';

