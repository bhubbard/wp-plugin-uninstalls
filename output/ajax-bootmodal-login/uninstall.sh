#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'option_bs3patch'
wp option delete 'modal_theme'
wp option delete 'option_checkbox'
wp option delete 'option_usermodal'
wp option delete 'can_register_option'
wp option delete 'lable_setting'
wp option delete 'button_text'
wp option delete 'button_text2'
wp option delete 'enable_login_captcha'
wp option delete 'enable_register_captcha'
wp option delete 'enable_lostpass_captcha'
wp option delete 'captcha_font'
wp option delete 'default_buttons'
wp option delete 'default_sizes'
wp option delete 'remove_btn_block'
wp option delete 'alimir_login_redirect'
wp option delete 'alimir_register_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alimir_viewed_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alimir_viewed_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alimir_viewed_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alimir_viewed_posts'"
