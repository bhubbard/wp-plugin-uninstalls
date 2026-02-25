#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vswc_api_system_key'
wp option delete 'vswc_current_value'
wp option delete 'vswc_last_value'
wp option delete 'vswc_last_value_updated_at'
wp option delete 'vswc_license_key'
wp option delete 'vswc_first_activation'
wp option delete 'vswc_uuid'
wp option delete 'vswc_settings_updated_timestamp'
wp option delete 'vswc_version'
wp option delete 'vswc_selected_language'

