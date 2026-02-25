#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcod_styles_scripts'
wp option delete 'wcod_restrict'
wp option delete 'wcod_display'
wp option delete 'wcod_theme_scripts'

