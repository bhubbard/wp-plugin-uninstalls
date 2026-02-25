#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_custom_login_page_image'
wp option delete 'simple_custom_login_page_url'
wp option delete 'simple_custom_login_page_background'
wp option delete 'simple_custom_login_page_form_bg'
wp option delete 'simple_custom_login_page_text_color'
wp option delete 'simple_custom_login_page_link_color'

