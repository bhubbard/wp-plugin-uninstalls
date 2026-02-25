#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customize-wp-login_login_button_style'
wp option delete 'customize-wp-login-dashicons_picker_settings'
wp option delete 'customize-wp-login-wp_login_bg'
wp option delete 'customize-wp-login-wp_login_bg_logo_image'
wp option delete 'customize-wp-login-wp_login_label_color'
wp option delete 'customize-wp-login-wp_login_form_bg'
wp option delete 'customize-wp-login-wp_login_logo_image'
wp option delete 'customize-wp-login-wp_links_logo'
wp option delete 'customize-wp-login-wp_links_below'
wp option delete 'customize-wp-login-wp_icon_label'
wp option delete 'customize-wp-login_custom_css'
wp option delete 'customize-wp-login-wp_enable_rewrite_rules'
wp option delete 'alt_login_page'
wp option delete 'alt_adv_redirect'
wp option delete 'alt_adv_admin'

