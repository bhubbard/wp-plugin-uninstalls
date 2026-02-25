#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvl-options'
wp option delete 'wpvl-version'

# Delete Transients
wp transient delete 'wpvl_log_error'
wp transient delete 'wpvl_config_error'

