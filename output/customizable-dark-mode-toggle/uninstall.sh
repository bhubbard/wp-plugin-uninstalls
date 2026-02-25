#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmtf_dark_bg_color'
wp option delete 'dmtf_dark_text_color'
wp option delete 'dmtf_toggle_button_bg'
wp option delete 'dmtf_toggle_button_text'
wp option delete 'dmtf_custom_css'

