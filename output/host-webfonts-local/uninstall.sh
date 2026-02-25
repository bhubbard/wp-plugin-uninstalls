#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'omgf_settings'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'omgf_pro_run_google_fonts_checker'
wp transient delete 'update_plugins'

