#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oheso_version_report_saveddata'
wp option delete 'oheso_version_report_saveddate'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

