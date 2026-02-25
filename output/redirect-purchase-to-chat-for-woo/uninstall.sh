#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpwpp_enabled'
wp option delete 'rpwpp_phone_number'
wp option delete 'rpwpp_custom_message'
wp option delete 'rpwpp_button_text'

