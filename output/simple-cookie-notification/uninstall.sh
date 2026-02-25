#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ba_cookie_link'
wp option delete 'ba_privacy_link'
wp option delete 'ba_cookie_text'
wp option delete 'ba_privacy_text'
wp option delete 'ba_set_cookie_on_interaction'
wp option delete 'ba_admin_bar_text'
wp option delete 'ba_button_color'
wp option delete 'ba_button_text'
wp option delete 'ba_json'

