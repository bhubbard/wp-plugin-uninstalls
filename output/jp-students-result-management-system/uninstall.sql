-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_jp_student_father_name', '_jp_student_mother_name', '_jp_student_type', '_jp_student_birth_date', '_jp_student_sex', '_jp_student_religion', '_jp_student_roll', '_jp_student_reg', '_jp_total_gpa');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_jp_student_father_name', '_jp_student_mother_name', '_jp_student_type', '_jp_student_birth_date', '_jp_student_sex', '_jp_student_religion', '_jp_student_roll', '_jp_student_reg', '_jp_total_gpa');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_jp_student_father_name', '_jp_student_mother_name', '_jp_student_type', '_jp_student_birth_date', '_jp_student_sex', '_jp_student_religion', '_jp_student_roll', '_jp_student_reg', '_jp_total_gpa');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_jp_student_father_name', '_jp_student_mother_name', '_jp_student_type', '_jp_student_birth_date', '_jp_student_sex', '_jp_student_religion', '_jp_student_roll', '_jp_student_reg', '_jp_total_gpa');

