#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mi_registered_css_styles'
wp option delete 'mi_registered_js_scripts'
wp option delete 'mi_registered_css_handles'
wp option delete 'mi_registered_js_handles'

