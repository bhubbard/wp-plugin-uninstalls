#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scrolltotop_plugin_settings'

# Delete Transients
wp transient delete 'scrolltotop_dynamic_js'
wp transient delete 'scrolltotop_dynamic_css'

