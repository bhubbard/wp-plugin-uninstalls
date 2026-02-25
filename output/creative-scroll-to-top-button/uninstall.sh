#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'creative_scroll_to_top_button_settings'

# Delete Transients
wp transient delete 'creative_scroll_to_top_button_activation_notice'

