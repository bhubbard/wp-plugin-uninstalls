#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cnfp_settings'

# Delete Transients
wp transient delete 'cnfp_review'

