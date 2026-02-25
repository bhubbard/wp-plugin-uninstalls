#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bestwp_plo_options'

# Delete Transients
wp transient delete 'bestwp-plo-notice-fail'

