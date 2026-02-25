#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selected_pages'
wp option delete 'lr_message'
wp option delete 'lr_button'
wp option delete 'login_restrictions_settings'

