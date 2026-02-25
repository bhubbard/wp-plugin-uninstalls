#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eraclito_wc_pause_enabled'
wp option delete 'eraclito_wc_pause_message'
wp option delete 'eraclito_wc_pause_message_position'
wp option delete 'eraclito_wc_pause_message_bg_color'
wp option delete 'eraclito_wc_pause_message_text_color'

