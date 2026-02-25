#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geoflex_notices'
wp option delete 'geoflex'

# Delete Transients
wp transient delete 'geoflex_list'

