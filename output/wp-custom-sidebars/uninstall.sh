#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbg_sidebars'

# Delete Transients
wp transient delete 'wpcs_imported_sbg_sidebars'

