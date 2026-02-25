#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smooth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smoothdbver'"

# Delete Transients
wp transient delete 'pbb-error-values'
wp transient delete 'settings_errors'

