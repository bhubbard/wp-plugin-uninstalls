#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ele-ui-color-scheme-restoration-settings'
wp option delete 'light_mode_colors'
wp option delete 'dark_mode_colors'
wp option delete 'brand_colors'

