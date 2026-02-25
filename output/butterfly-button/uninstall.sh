#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'butterfly_button_api_key'
wp option delete 'butterfly_button_auto_inject'
wp option delete 'butterfly_button_display_mode'
wp option delete 'butterfly_button_size'
wp option delete 'butterfly_button_align'
wp option delete 'butterfly_button_horizontal_space'
wp option delete 'butterfly_button_vertical_space'
wp option delete 'butterfly_button_horizontal_unit'
wp option delete 'butterfly_button_vertical_unit'

