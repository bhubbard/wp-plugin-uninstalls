#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'live_2d_settings_user_token'
wp option delete 'live_2d_settings_option_name'
wp option delete 'live_2d_advanced_option_name'

