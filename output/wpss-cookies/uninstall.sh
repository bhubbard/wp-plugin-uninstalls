#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_post_edit_rows'
wp option delete 'wpss_cookie_message'
wp option delete 'wpss_show_cookie_message'
wp option delete 'wpss_message_position'
wp option delete 'wpss_message_style'
wp option delete 'wpss_button_text'
wp option delete 'wpss_cookie_name'
wp option delete 'wpss_cookie_life'

