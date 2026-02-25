#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpme_hover_effect'
wp option delete 'wpme_selected_menu'
wp option delete 'wpme_apply_to_submenus'
wp option delete 'wpme_normal_text_color'
wp option delete 'wpme_hover_text_color'
wp option delete 'wpme_normal_background_color'
wp option delete 'wpme_hover_background_color'
wp option delete 'wpme_normal_border_color'
wp option delete 'wpme_hover_border_color'

