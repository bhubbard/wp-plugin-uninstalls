#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pinsavepinterest_pin_text'
wp option delete 'pinsavepinterest_button_bg_color'
wp option delete 'pinsavepinterest_font_color'
wp option delete 'pinsavepinterest_button_location'
wp option delete 'pinsavepinterest_autohide'

