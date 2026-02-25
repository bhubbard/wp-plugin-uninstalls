#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_test_drive'

# Delete Transients
wp transient delete 'update_plugins'

