#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'graylc_plugin_redirect'
wp option delete 'graylc_logo_url_redirect'
wp option delete 'graylc_logo_text'
wp option delete 'graylc_remember_me'
wp option delete 'graylc_form_width'
wp option delete 'graylc_login_logo'
wp option delete 'graylc_bg_image'
wp option delete 'graylc_logo_width'
wp option delete 'graylc_logo_height'
wp option delete 'graylc_input_height'
wp option delete 'graylc_input_border_width'
wp option delete 'graylc_input_border_color'
wp option delete 'graylc_button_bg_color'
wp option delete 'graylc_button_text_color'

