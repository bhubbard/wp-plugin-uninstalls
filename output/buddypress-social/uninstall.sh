#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_button_facebook'
wp option delete 'social_button_twitter'
wp option delete 'social_button_google'
wp option delete 'social_button_email'
wp option delete 'social_button_color'
wp option delete 'social_button_color_hover'

