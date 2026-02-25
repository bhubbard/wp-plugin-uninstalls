#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xs_custom_css'
wp option delete 'wptableeditor_license'
wp option delete 'wptableeditor_version_installed'

# Delete Transients
wp transient delete 'wptableeditor_tracking'

