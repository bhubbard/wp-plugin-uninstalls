#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_facebook'
wp option delete 'sc_whatsapp'
wp option delete 'sc_email'
wp option delete 'sc_call'
wp option delete 'sc_call_to_action'
wp option delete 'sc_button_color'
wp option delete 'sc_position'
wp option delete 'sc_order'

