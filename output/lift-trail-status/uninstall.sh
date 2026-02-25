#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lift_trail_status_data_date'

# Delete Transients
wp transient delete 'mwps_installing'

