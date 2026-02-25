#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'less_compiler'
wp option delete 'less'
wp option delete 'less_vars'
wp option delete 'less_variables'
wp option delete 'less_variables_defaults'

# Delete Transients
wp transient delete 'settings_errors'

