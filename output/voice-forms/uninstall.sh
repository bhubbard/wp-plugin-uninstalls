#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vf_api_system_key'
wp option delete 'vf_current_value'
wp option delete 'vf_last_value'
wp option delete 'vf_last_value_updated_at'
wp option delete 'vf_license_key'
wp option delete 'vf_first_activation'
wp option delete 'vf_uuid'
wp option delete 'vf_settings_updated_timestamp'
wp option delete 'vf_version'
wp option delete 'vf_selected_language'

