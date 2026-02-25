#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc-redirects'

# Delete Transients
wp transient delete 'settings_errors'

