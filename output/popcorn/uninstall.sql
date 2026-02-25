-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('POPCORN_sel_dis_opt', 'IOPD_display', 'AQPD_display', 'TOPD_display', 'CFPD_display', 'POPCORN_enable', 'IOPD_heading', 'IOPD_heading_text_color', 'IOPD_heading_background_color', 'IOPD_body_background_color', 'IOPD_image_src', 'IOPD_image_href', 'AQPD_heading', 'AQPD_heading_text_color', 'AQPD_heading_background_color', 'AQPD_body_background_color', 'AQPD_question', 'AQPD_question_text_color', 'AQPD_email', 'AQPD_button_text', 'AQPD_button_text_color', 'AQPD_button_bgcolor', 'TOPD_heading', 'TOPD_heading_text_color', 'TOPD_heading_background_color', 'TOPD_body_background_color', 'TOPD_static_data', 'TOPD_static_data_color', 'CFPD_heading', 'CFPD_heading_text_color', 'CFPD_heading_background_color', 'CFPD_body_background_color', 'CFPD_form_sel', 'CFPD_contactForm7_shortcode', 'CFPD_email', 'CFPD_button_text', 'CFPD_button_text_color', 'CFPD_button_bgcolor');

