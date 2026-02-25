#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sh_title'
wp option delete 'sh_message'
wp option delete 'sh_show'
wp option delete 'sh_show_links_1'
wp option delete 'sh_show_links_2'
wp option delete 'sh_show_custom_code'
wp option delete 'sh_bg_color'
wp option delete 'sh_title_color'
wp option delete 'sh_message_color'
wp option delete 'sh_title_font_size'
wp option delete 'sh_title_text_align'
wp option delete 'sh_title_font_weight'
wp option delete 'sh_title_font_style'
wp option delete 'sh_title_font_decoration'
wp option delete 'sh_message_font_size'
wp option delete 'sh_message_text_align'
wp option delete 'sh_message_font_weight'
wp option delete 'sh_message_font_style'
wp option delete 'sh_message_font_decoration'
wp option delete 'sh_code_message'
wp option delete 'sh_width'
wp option delete 'sh_border_color'
wp option delete 'sh_border_style'
wp option delete 'sh_border_width'
wp option delete 'sh_show_clock_date'
wp option delete 'sh_show_clock_time'
wp option delete 'sh_date_format'
wp option delete 'sh_date_position'
wp option delete 'sh_date_font_size'
wp option delete 'sh_date_font_weight'
wp option delete 'sh_date_font_color'
wp option delete 'sh_date_font_style'
wp option delete 'sh_date_font_decoration'
wp option delete 'sh_time_format'
wp option delete 'sh_time_position'
wp option delete 'sh_time_font_size'
wp option delete 'sh_time_font_color'
wp option delete 'sh_time_font_weight'
wp option delete 'sh_time_font_style'
wp option delete 'sh_time_font_decoration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_title_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_font_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_text_align_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_font_icon_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_open_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_font_weight_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_font_style_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_link_font_decoration_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sh_col_width_%'"

