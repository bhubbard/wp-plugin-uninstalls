#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cses_enable_box'
wp option delete 'cses_enable_fontawesome'
wp option delete 'cses_display_position'
wp option delete 'cses_display_icon_names'
wp option delete 'cses_question_text'
wp option delete 'cses_display_location'
wp option delete 'cses_display_buttons'
wp option delete 'cses_options_group'

