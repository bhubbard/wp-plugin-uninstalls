#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'title_color'
wp option delete 'subtitle_color'
wp option delete 'countdown_color'
wp option delete 'nav_color'
wp option delete 'menu_toggle_label_color'
wp option delete 'copyright_color'
wp option delete 'mdxcsp_enable_coming_soon'
wp option delete 'mdxcsp_selected_template'
wp option delete 'mdxcsp_template_settings'

