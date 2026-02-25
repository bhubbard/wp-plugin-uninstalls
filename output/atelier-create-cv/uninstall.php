<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atl_cv_first_name');
delete_site_option('atl_cv_first_name');
delete_option('sidebar_bg_color');
delete_site_option('sidebar_bg_color');
delete_option('atl_cv_font_color');
delete_site_option('atl_cv_font_color');
delete_option('atl_cv_square_img');
delete_site_option('atl_cv_square_img');
delete_option('atl_cv_surname');
delete_site_option('atl_cv_surname');
delete_option('atl_cv_email');
delete_site_option('atl_cv_email');
delete_option('atl_cv_telephone');
delete_site_option('atl_cv_telephone');
delete_option('atl_cv_person_image');
delete_site_option('atl_cv_person_image');
delete_option('atl_cv_address');
delete_site_option('atl_cv_address');
delete_option('atl_cv_address_code');
delete_site_option('atl_cv_address_code');
delete_option('atl_cv_city');
delete_site_option('atl_cv_city');
delete_option('atl_cv_date_birth');
delete_site_option('atl_cv_date_birth');
delete_option('atl_cv_place_birth');
delete_site_option('atl_cv_place_birth');
delete_option('atl_cv_driving_license');
delete_site_option('atl_cv_driving_license');
delete_option('atl_cv_gender');
delete_site_option('atl_cv_gender');
delete_option('atl_cv_nationality');
delete_site_option('atl_cv_nationality');
delete_option('atl_cv_condition');
delete_site_option('atl_cv_condition');
delete_option('atl_cv_repo');
delete_site_option('atl_cv_repo');
delete_option('atl_cv_linkedin');
delete_site_option('atl_cv_linkedin');
delete_option('atl_cv_website');
delete_site_option('atl_cv_website');
delete_option('atl_cv_qf_skills');
delete_site_option('atl_cv_qf_skills');
delete_option('atl_cv_qf_hobby');
delete_site_option('atl_cv_qf_hobby');
delete_option('qf_privacy_policy');
delete_site_option('qf_privacy_policy');

