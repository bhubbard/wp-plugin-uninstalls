#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'NDTAN_MAINTENANCE_options'
wp option delete 'ndt_maintenance_options'

# Delete Transients
wp transient delete 'ndt_maintenance_themes'

