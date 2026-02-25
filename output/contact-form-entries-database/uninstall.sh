#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfedcw_settings'
wp option delete 'cfedcw_version'
wp option delete 'cfedcw_deactivated_at'

# Delete Transients
wp transient delete 'cfedcw_no_supported_forms'

