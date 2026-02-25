#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_display_radio'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_display_position'"
wp option delete 'read_mb_read_more_text'
wp option delete 'read_mb_read_less_text'
wp option delete 'read_mb_text_color'
wp option delete 'read_mb_text_hover'
wp option delete 'read_mb_button_background'
wp option delete 'read_mb_button_hover'
wp option delete 'read_mb_width'
wp option delete 'read_mb_font_size'
wp option delete 'read_mb_display_radio'
wp option delete 'read_mb_display_position'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_font_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_hover'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_background'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_hover'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_read_more_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_read_less_text'"

