#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hexometer-property-token'
wp option delete 'hexometer-property-disable-auto-fix'
wp option delete 'hexometer_last_scan'

