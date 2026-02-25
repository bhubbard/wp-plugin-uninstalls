#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sigmize_bearer_token'
wp option delete 'sigmize_auth_token'
wp option delete 'sigmize_connection_id'
wp option delete 'sigmize_workspace_uuid'
wp option delete 'sigmize_experiments'
wp option delete 'sigmize_last_sync_time'
wp option delete 'sigmize_gdpr_settings'
wp option delete 'sigmize_gdpr_enabled'
wp option delete 'sigmize_manual_sdk_loading'
wp option delete 'sigmize_settings'
wp option delete 'sigmize_last_status_sync'

