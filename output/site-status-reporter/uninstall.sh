#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reportpressing_options'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

