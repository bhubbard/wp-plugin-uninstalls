#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pf7_last_license_check'

# Delete Transients
wp transient delete 'pf7_license_details'

