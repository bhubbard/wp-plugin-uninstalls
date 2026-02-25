#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accessible_tooltips_custom_css'
wp option delete 'accessible_tooltips_theme'
wp option delete 'accessible_tooltips_interactive_border_size'
wp option delete 'accessible_tooltips_placement'
wp option delete 'accessible_tooltips_fallback_placement'
wp option delete 'accessible_tooltips_allow_html'
wp option delete 'accessible_tooltips_hide_on_click'

