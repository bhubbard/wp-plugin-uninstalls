#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_designious_library_version'

# Delete Transients
wp transient delete '_designious_library_addon_latest_version'

