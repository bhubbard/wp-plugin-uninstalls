#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adminimal_bar_enabled'
wp option delete 'adminimal_bar_orientation'
wp option delete 'adminimal_bar_minimized_transparent'
wp option delete 'adminimal_bar_minimized_logo_color'

