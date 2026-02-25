#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selected_button'
wp option delete 'floating_social_button_float'
wp option delete 'floating_social_button_position_top'
wp option delete 'floating_social_button_position_left'
wp option delete 'floating_social_button_disable_mobile'

