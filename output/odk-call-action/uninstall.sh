#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_call_action_option_mobile'
wp option delete 'wp_call_action_option_desktop'

