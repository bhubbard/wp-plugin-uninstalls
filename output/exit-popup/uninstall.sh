#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exit_popup_cookie_expire'
wp option delete 'exit_popup_click_outside'
wp option delete 'exit_popup_logged_out_users_only'
wp option delete 'exit_popup_modal_width'
wp option delete 'exit_popup_modal_height'
wp option delete 'exit_popup_popup_title_color'
wp option delete 'exit_popup_popup_title'
wp option delete 'exit_popup_popup_footer'
wp option delete 'exit_popup_popup_body'
wp option delete 'exit_popup_languages'
wp option delete 'exit-popup-exclude-from-posts'
wp option delete 'exit_popup_powered_by'

