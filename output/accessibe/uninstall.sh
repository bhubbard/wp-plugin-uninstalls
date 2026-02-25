#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accessibeforwp_options'

# Delete Transients
wp transient delete 'accessibe_previous_version'

