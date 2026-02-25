#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brs_giris_form_heading'
wp option delete 'brs_giris_form_captcha'
wp option delete 'brs_giris_form_captcha_lang'
wp option delete 'brs_giris_form_no_shake'
wp option delete 'brs_giris_form_captcha_key'
wp option delete 'brs_giris_form_captcha_theme'
wp option delete 'brs_giris_form_captcha_type'
wp option delete 'brs_giris_redirect_register'
wp option delete 'brs_giris_redirect_login'
wp option delete 'brs_giris_custom_css'
wp option delete 'brs_giris_custom_js'
wp option delete 'brs_giris_form_animation_in'
wp option delete 'brs_giris_form_animation_out'
wp option delete 'brs_giris_form_animation_error'
wp option delete 'brs_giris_logo_hide'
wp option delete 'brs_giris_logo_link'
wp option delete 'brs_giris_logo_title'
wp option delete 'brs_giris_custom_login_url'

# Delete Transients
wp transient delete 'tt-logo-fonts'

