#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ulogcspl_login_style_template'
wp option delete 'ulogcspl_login_form_border_radius'
wp option delete 'ulogcspl_login_button_border_radius'
wp option delete 'ulogcspl_login_background_color'
wp option delete 'ulogcspl_login_form_background_color'
wp option delete 'ulogcspl_login_button_color'
wp option delete 'ulogcspl_login_button_text_color'
wp option delete 'ulogcspl_login_form_transparency'
wp option delete 'ulogcspl_login_background_image'
wp option delete 'ulogcspl_login_custom_logo'
wp option delete 'ulogcspl_login_logo_width'
wp option delete 'ulogcspl_login_logo_height'
wp option delete 'ulogcspl_login_background_blur'
wp option delete 'ulogcspl_recaptcha_site_key'
wp option delete 'ulogcspl_recaptcha_secret_key'
wp option delete 'ulogcspl_recaptcha_theme'
wp option delete 'ulogcspl_enable_recaptcha'
wp option delete 'ulogcspl_captcha_type'

