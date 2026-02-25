#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uvs_api_system_key'
wp option delete 'uvs_current_value'
wp option delete 'uvs_last_value'
wp option delete 'uvs_last_value_updated_at'
wp option delete 'uvs_license_key'
wp option delete 'uvs_first_activation'
wp option delete 'uvs_uuid'
wp option delete 'uvs_settings_updated_timestamp'
wp option delete 'uvs_version'
wp option delete 'uvs_selected_language'

