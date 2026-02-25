#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slsc_logouttext'
wp option delete 'slsc_username'
wp option delete 'slsc_password'
wp option delete 'slsc_button_text'
wp option delete 'slsc_welcome_text'

