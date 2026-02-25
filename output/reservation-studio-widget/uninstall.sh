#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rs_widget_%'"
wp option delete 'rs_widget_version'
wp option delete 'rs_widget_enabled'
wp option delete 'rs_widget_page_type'
wp option delete 'rs_widget_slug'
wp option delete 'rs_widget_language'
wp option delete 'rs_widget_sticky_button_enabled'
wp option delete 'rs_widget_sticky_button_text'
wp option delete 'rs_widget_sticky_button_text_color'
wp option delete 'rs_widget_sticky_button_Background_color'
wp option delete 'rs_widget_sticky_button_position'
wp option delete 'rs_widget_sticky_tooltip_text'
wp option delete 'rs_widget_sticky_tooltip_show_delay'
wp option delete 'rs_widget_sticky_tooltip_expire_time'
wp option delete 'rs_widget_buttons_selector'
wp option delete 'rs_widget_modal_max_width'
wp option delete 'rs_widget_modal_max_height'

