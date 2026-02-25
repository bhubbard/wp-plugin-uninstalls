#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiols_enable_customization'
wp option delete 'aiols_login_logo'
wp option delete 'aiols_login_bg_img'
wp option delete 'aiols_background_color'
wp option delete 'aiols_button_color'
wp option delete 'aiols_form_color'
wp option delete 'aiols_fields_border_color'
wp option delete 'aiols_form_radius'
wp option delete 'aiols_links_color'
wp option delete 'aiols_form_width'

