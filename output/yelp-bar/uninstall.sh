#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themeforce_yelpbar_options'
wp option delete 'themeforce_yelpbar_json'

# Delete Transients
wp transient delete 'themeforce_yelpbar_json'

