#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'code_highlighter_language'
wp option delete 'code_highlighter_text_copy'
wp option delete 'code_highlighter_text_copied'
wp option delete 'code_highlighter_bg_color'
wp option delete 'code_highlighter_line_color'
wp option delete 'code_highlighter_button_color'
wp option delete 'code_highlighter_button_border_color'
wp option delete 'code_highlighter_button_border_thickness'
wp option delete 'code_highlighter_button_font_size'
wp option delete 'code_highlighter_button_padding_top'
wp option delete 'code_highlighter_button_padding_right'
wp option delete 'code_highlighter_button_padding_bottom'
wp option delete 'code_highlighter_button_padding_left'
wp option delete 'code_highlighter_button_border'
wp option delete 'code_highlighter_button_border_radius'
wp option delete 'code_highlighter_button_border_radius_value'

