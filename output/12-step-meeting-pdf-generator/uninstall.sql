-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsmp_filtering_types_what', 'tsmp_filtering_types_how', 'attendance_option_filtering', 'tsmp_layout', 'tsml_types_in_use', 'tsml_program', 'tsmp_width', 'tsmp_Height', 'tsmp_font_size', 'tsmp_header_font_size', 'tsmp_auto_font', 'tsmp_desired_page_count', 'tsmp_margin', 'tsmp_set_custom_meeting_html', 'tsmp_custom_meeting_html', 'tsmp_header', 'tsmp_column2_indent', 'tsmp_intro_html', 'tsmp_column_html', 'tsmp_outtro_html', 'tsmp_column_count', 'tsmp_column_padding', 'tsmp_first_page_no', 'tsmp_include_index', 'tsmp_table_region_new_page', 'tsmp_set_save_file', 'tsmp_save_file_name', 'tsmp_height');

