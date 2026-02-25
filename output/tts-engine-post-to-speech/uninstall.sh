#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ttsengine_button_location_bottom'
wp option delete 'ttsengine_display_link'
wp option delete 'ttsengine_link_location_bottom'
wp option delete 'ttsengine_language'
wp option delete 'ttsengine_version'

