#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'e2wpms_settings'
wp option delete 'e2wpms_error_log'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'e2wpms_upgrade_data'
wp transient delete 'e2wpms_licence_response'
wp transient delete 'e2wpms_temporarily_disable_ssl'

