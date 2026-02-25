#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcnb_enabled'
wp option delete 'wcnb_message'
wp option delete 'wcnb_button_text'

