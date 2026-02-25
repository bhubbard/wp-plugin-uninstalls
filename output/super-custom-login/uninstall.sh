#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scl_logo_url'
wp option delete 'scl_logo_width'
wp option delete 'scl_logo_height'
wp option delete 'scl_background_color'
wp option delete 'scl_backtoblog_color'
wp option delete 'scl_nav_color'
wp option delete 'scl_login_form_background_color'
wp option delete 'scl_login_form_text_color'
wp option delete 'scl_log_in_button_background_color'
wp option delete 'scl_log_in_button_background_hover_color'
wp option delete 'scl_log_in_button_text_color'
wp option delete 'scl_log_in_button_text_hover_color'
wp option delete 'scl_login_error_background_color'
wp option delete 'scl_login_error_border_color'
wp option delete 'scl_login_error_text_color'

