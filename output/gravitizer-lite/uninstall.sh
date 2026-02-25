#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'how_to_use_notice_dismissed'
wp option delete 'Gravitizer_Lite_Version'
wp option delete 'maybe_gravitizer_installed'
wp option delete 'current_form_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_field_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_field_margin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_label_placement_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_label_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_label_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_border_primary_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_border_focus_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_placeholder_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_textfield_placeholder_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_icon_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_textfield_height_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_background_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_text_focus_background_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_textfield_placeholder_floating_position_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_normal_textfield_placeholder_floating_position_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_textfield_enable_radius_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_field_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_field_margin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_label_placement_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_label_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_switch_label_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_field_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_field_margin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_label_placement_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_label_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_label_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_wrapper_padding_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_form_wrapper_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_radio_field_initial_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_checkbox_field_initial_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gravitizer_field_value_color_%'"

