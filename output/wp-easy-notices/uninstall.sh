#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_easy_notices_clear_dimissals'
wp option delete 'wp_easy_notices_padding_top_bottom'
wp option delete 'wp_easy_notices_padding_left_right'
wp option delete 'wp_easy_notices_font_size'
wp option delete 'wp_easy_notices_background'
wp option delete 'wp_easy_notices_text_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'wp_easy_notices_dismissable'
wp option delete 'wp_easy_notices_position'
wp option delete 'wp_easy_notices_text'
wp option delete 'wp_easy_notices_dismiss_icon'

