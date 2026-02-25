#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'outvoice_users'
wp option delete 'outvoice_plugin_options'
wp option delete 'outvoice_options'

# Delete Transients
wp transient delete 'outvoice_error'
wp transient delete 'outvoice_success'
wp transient delete 'outvoice_status'

