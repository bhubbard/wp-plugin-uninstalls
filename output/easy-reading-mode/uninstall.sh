#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'erm-settings'
wp option delete 'erm_is_first_time'
wp option delete 'erm_custom_design'
wp option delete 'erm_text_color'
wp option delete 'erm_button_text_size'
wp option delete 'erm_background_color'
wp option delete 'erm_border'
wp option delete 'erm_padding'
wp option delete 'erm_margin'
wp option delete 'erm_button_text'
wp option delete 'erm_is_activated'

