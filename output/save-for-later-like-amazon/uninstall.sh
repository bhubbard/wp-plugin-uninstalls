#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'server_allow'
wp option delete 'requested_activation_key'
wp option delete 'enable_disable_plugin'
wp option delete 'user_end_code_to_check'
wp option delete 'kbiz_registration_email'
wp option delete 'kabiz_button_text'
wp option delete 'kabiz_move_to_cart_button_text'
wp option delete 'get_option_save_for_list'
wp option delete 'kbiz_activation_key'
wp option delete 'api_url_for_activation'

