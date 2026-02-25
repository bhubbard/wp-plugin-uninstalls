#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynamic_theme_colors'
wp option delete 'cset_schemes'
wp option delete 'default_scheme'
wp option delete 'custom_schemes'

