#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_s4wp_settings'

# Delete Transients
wp transient delete 'schema_check'

