#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advanced_exit_popup_box'
wp option delete 'advanced_exit_popup_popup_title_color'
wp option delete 'advanced_exit_popup_popup_title'
wp option delete 'advanced_exit_popup_popup_bg_color'
wp option delete 'advanced_exit_popup_popup_body'
wp option delete 'advanced_exit_popup_popup_footer'
wp option delete 'advanced_exit_popup_cookie_expire'
wp option delete 'advanced_exit_popup_modal_width'
wp option delete 'advanced_exit_popup_modal_height'
wp option delete 'advanced_exit_popup_powered_by'

