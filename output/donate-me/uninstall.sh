#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'donateme_position'
wp option delete 'donateme_api'
wp option delete 'donateme_recurring'
wp option delete 'donateme_currency'
wp option delete 'donateme_color'
wp option delete 'donateme_textcolor'
wp option delete 'donateme_text'

