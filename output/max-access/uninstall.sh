#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'll_at_license'
wp option delete 'toolbar_license_key'
wp option delete 'oada_activation_token'
wp option delete 'license_activated'
wp option delete 'error_message'
wp option delete 'max_access_settings'

