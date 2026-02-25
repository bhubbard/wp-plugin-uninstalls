#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'floating_widgets_appreciation'
wp option delete 'floating_widgets_mode'
wp option delete 'floating_widgets_before_widget'
wp option delete 'floating_widgets_after_widget'
wp option delete 'floating_widgets_before_title'
wp option delete 'floating_widgets_after_title'
wp option delete 'floating_widgets_title_size'
wp option delete 'floating_widgets_title_color'
wp option delete 'floating_widgets_posts'
wp option delete 'floating_widgets_before_section'
wp option delete 'floating_widgets_after_section'
wp option delete 'floating_widgets_before_content'
wp option delete 'floating_widgets_after_content'
wp option delete 'floating_widget_float'
wp option delete 'floating_widget_width'
wp option delete 'floating_widget_padding'
wp option delete 'floating_widget_margin'
wp option delete 'floating_widget_border_width'
wp option delete 'floating_widget_border_style'
wp option delete 'floating_widget_border_color'
wp option delete 'floating_widgets_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'floating_widgets_custom_%'"

