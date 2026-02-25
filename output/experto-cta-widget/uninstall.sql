-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esc_box_primary_color', 'esc_box_secondary_color', 'esc_box_text_color', 'esc_box_icon_color', 'esc_box_footer_icon_color', 'esc_box_disable', 'esc_body_title_setting', 'esc_body_desc_setting', 'esc_email_setting', 'esc_main_button_text', 'esc_main_button_position', 'esc_main_button_icon', 'esc_box1_icon', 'esc_box1_title', 'esc_box2_icon', 'esc_box2_title', 'esc_box3_icon', 'esc_box3_title', 'esc_box4_icon', 'esc_box4_title', 'esc_box5_icon', 'esc_box5_title', 'esc_box6_icon', 'esc_box6_title', 'esc_box1_clicked', 'esc_box2_clicked', 'esc_box3_clicked', 'esc_box4_clicked', 'esc_box5_clicked', 'esc_box6_clicked', 'esc_main_form_disable');
DELETE FROM wp_options WHERE option_name LIKE '%_disable';
DELETE FROM wp_options WHERE option_name LIKE '%_form_disable';
DELETE FROM wp_options WHERE option_name LIKE '%_icon';
DELETE FROM wp_options WHERE option_name LIKE '%_title';
DELETE FROM wp_options WHERE option_name LIKE '%_description';
DELETE FROM wp_options WHERE option_name LIKE '%_form_placeholder';
DELETE FROM wp_options WHERE option_name LIKE '%_clicked';
DELETE FROM wp_options WHERE option_name LIKE '%_link';

