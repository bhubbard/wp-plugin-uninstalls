#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parent_border_width'
wp option delete 'child_border_width'

# Delete Transients
wp transient delete 'wp_spry_menu_themes'

