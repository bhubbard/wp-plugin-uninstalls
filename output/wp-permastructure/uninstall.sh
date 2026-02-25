#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_permalink_structure'"

# Delete Transients
wp transient delete 'settings_errors'

