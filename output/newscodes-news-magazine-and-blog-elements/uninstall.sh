#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newscodes_settings'
wp option delete 'newscodes_shortcodes'
wp option delete '_nc_less_styles'
wp option delete '_nc_less_styles_exclude'

