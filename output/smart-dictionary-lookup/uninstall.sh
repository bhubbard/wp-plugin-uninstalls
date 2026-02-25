#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartdic_api_url'
wp option delete 'smartdic_enable_popup'
wp option delete 'smartdic_popup_theme'
wp option delete 'smartdic_popup_position'

