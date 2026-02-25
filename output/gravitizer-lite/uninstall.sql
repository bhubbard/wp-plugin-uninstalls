-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('how_to_use_notice_dismissed', 'Gravitizer_Lite_Version', 'maybe_gravitizer_installed', 'current_form_id');
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_field_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_field_margin_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_label_placement_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_label_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_label_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_border_primary_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_border_focus_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_placeholder_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_textfield_placeholder_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_icon_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_textfield_height_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_background_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_focus_background_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_textfield_placeholder_floating_position_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_normal_textfield_placeholder_floating_position_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_textfield_enable_radius_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_field_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_field_margin_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_label_placement_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_label_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_label_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_field_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_field_margin_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_label_placement_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_label_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_label_size_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_wrapper_padding_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_form_wrapper_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_field_initial_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_field_initial_color_%';
DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_field_value_color_%';

