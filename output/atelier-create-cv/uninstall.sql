-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atl_cv_first_name', 'sidebar_bg_color', 'atl_cv_font_color', 'atl_cv_square_img', 'atl_cv_surname', 'atl_cv_email', 'atl_cv_telephone', 'atl_cv_person_image', 'atl_cv_address', 'atl_cv_address_code', 'atl_cv_city', 'atl_cv_date_birth', 'atl_cv_place_birth', 'atl_cv_driving_license', 'atl_cv_gender', 'atl_cv_nationality', 'atl_cv_condition', 'atl_cv_repo', 'atl_cv_linkedin', 'atl_cv_website', 'atl_cv_qf_skills', 'atl_cv_qf_hobby', 'qf_privacy_policy');

