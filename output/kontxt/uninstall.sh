#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kontxt_include_location'

# Delete Transients
wp transient delete 'settings_errors'

