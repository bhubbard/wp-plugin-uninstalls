#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dadicc_options'
wp option delete 'dadicc_options_admin'

# Delete Transients
wp transient delete 'dadicc_scripts_kept'

