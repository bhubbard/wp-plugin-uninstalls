#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'A2A_SUBSCRIBE_button_opens_new_window'
wp option delete 'A2A_SUBSCRIBE_onclick'
wp option delete 'A2A_SUBSCRIBE_button'
wp option delete 'A2A_SUBSCRIBE_button_custom'
wp option delete 'A2A_SUBSCRIBE_button_text'
wp option delete 'A2A_SUBSCRIBE_widget_title'
wp option delete 'A2A_SUBSCRIBE_additional_js_variables'

