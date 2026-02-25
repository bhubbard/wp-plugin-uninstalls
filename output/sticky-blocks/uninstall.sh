#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stky_custom_css'
wp option delete 'stky_db_version'

# Delete Transients
wp transient delete 'stky_admin_success_message'
wp transient delete 'stky_admin_error_message'

