#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hello_popup_redirect_after_activation'
wp option delete 'hello_popup_custom_css'
wp option delete 'hello_popup_enabled'
wp option delete 'hello_popup_title'
wp option delete 'hello_popup_message'
wp option delete 'hello_popup_image'
wp option delete 'hello_popup_delay'
wp option delete 'hello_popup_expiry'
wp option delete 'hello_popup_auto_show'
wp option delete 'hello_popup_selected_pages'
wp option delete 'hello_popup_cta_text'
wp option delete 'hello_popup_cta_url'
wp option delete 'hello_popup_cta_color'
wp option delete 'hello_popup_close_btn_color'
wp option delete 'hello_popup_shortcode'

