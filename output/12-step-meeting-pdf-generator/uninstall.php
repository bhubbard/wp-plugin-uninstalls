<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsmp_filtering_types_what');
delete_site_option('tsmp_filtering_types_what');
delete_option('tsmp_filtering_types_how');
delete_site_option('tsmp_filtering_types_how');
delete_option('attendance_option_filtering');
delete_site_option('attendance_option_filtering');
delete_option('tsmp_layout');
delete_site_option('tsmp_layout');
delete_option('tsml_types_in_use');
delete_site_option('tsml_types_in_use');
delete_option('tsml_program');
delete_site_option('tsml_program');
delete_option('tsmp_width');
delete_site_option('tsmp_width');
delete_option('tsmp_Height');
delete_site_option('tsmp_Height');
delete_option('tsmp_font_size');
delete_site_option('tsmp_font_size');
delete_option('tsmp_header_font_size');
delete_site_option('tsmp_header_font_size');
delete_option('tsmp_auto_font');
delete_site_option('tsmp_auto_font');
delete_option('tsmp_desired_page_count');
delete_site_option('tsmp_desired_page_count');
delete_option('tsmp_margin');
delete_site_option('tsmp_margin');
delete_option('tsmp_set_custom_meeting_html');
delete_site_option('tsmp_set_custom_meeting_html');
delete_option('tsmp_custom_meeting_html');
delete_site_option('tsmp_custom_meeting_html');
delete_option('tsmp_header');
delete_site_option('tsmp_header');
delete_option('tsmp_column2_indent');
delete_site_option('tsmp_column2_indent');
delete_option('tsmp_intro_html');
delete_site_option('tsmp_intro_html');
delete_option('tsmp_column_html');
delete_site_option('tsmp_column_html');
delete_option('tsmp_outtro_html');
delete_site_option('tsmp_outtro_html');
delete_option('tsmp_column_count');
delete_site_option('tsmp_column_count');
delete_option('tsmp_column_padding');
delete_site_option('tsmp_column_padding');
delete_option('tsmp_first_page_no');
delete_site_option('tsmp_first_page_no');
delete_option('tsmp_include_index');
delete_site_option('tsmp_include_index');
delete_option('tsmp_table_region_new_page');
delete_site_option('tsmp_table_region_new_page');
delete_option('tsmp_set_save_file');
delete_site_option('tsmp_set_save_file');
delete_option('tsmp_save_file_name');
delete_site_option('tsmp_save_file_name');
delete_option('tsmp_height');
delete_site_option('tsmp_height');

