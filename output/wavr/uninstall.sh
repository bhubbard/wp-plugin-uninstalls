#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wavr_default_server'
wp option delete 'wavr_default_bgcolor'
wp option delete 'wavr_default_color'
wp option delete 'wavr_default_font'
wp option delete 'wavr_default_font_size'
wp option delete 'wavr_default_width'
wp option delete 'wavr_default_height'

