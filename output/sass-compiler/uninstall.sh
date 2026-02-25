#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sass_variables_defaults'
wp option delete 'sass_compiler_cache'

# Delete Transients
wp transient delete 'settings_errors'

