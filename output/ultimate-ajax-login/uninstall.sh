#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ual_login_button_text'
wp option delete 'ual_text_above_form'
wp option delete 'ual_login_error_msg'
wp option delete 'ual_redirect_login'

