#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esc_box_primary_color'
wp option delete 'esc_box_secondary_color'
wp option delete 'esc_box_text_color'
wp option delete 'esc_box_icon_color'
wp option delete 'esc_box_footer_icon_color'
wp option delete 'esc_box_disable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_icon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_description'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form_placeholder'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clicked'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_link'"
wp option delete 'esc_body_title_setting'
wp option delete 'esc_body_desc_setting'
wp option delete 'esc_email_setting'
wp option delete 'esc_main_button_text'
wp option delete 'esc_main_button_position'
wp option delete 'esc_main_button_icon'
wp option delete 'esc_box1_icon'
wp option delete 'esc_box1_title'
wp option delete 'esc_box2_icon'
wp option delete 'esc_box2_title'
wp option delete 'esc_box3_icon'
wp option delete 'esc_box3_title'
wp option delete 'esc_box4_icon'
wp option delete 'esc_box4_title'
wp option delete 'esc_box5_icon'
wp option delete 'esc_box5_title'
wp option delete 'esc_box6_icon'
wp option delete 'esc_box6_title'
wp option delete 'esc_box1_clicked'
wp option delete 'esc_box2_clicked'
wp option delete 'esc_box3_clicked'
wp option delete 'esc_box4_clicked'
wp option delete 'esc_box5_clicked'
wp option delete 'esc_box6_clicked'
wp option delete 'esc_main_form_disable'

