#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fpropdf_restrict_condition'
wp option delete 'fpropdf_restrict_user'
wp option delete 'fpropdf_restrict_role'
wp option delete 'fpropdf_enable_security'
wp option delete 'fpropdf_api_server'
wp option delete 'fpropdf_use_field_keys'
wp option delete 'fpropdf_licence'
wp option delete 'fpropdf_limit_dropdowns'
wp option delete 'fpropdf_installed_version'
wp option delete 'fpropdf_version'
wp option delete 'fpropdf_restrict_remote_requests'
wp option delete 'fpropdf_enable_local'
wp option delete 'fpropdf_demo_imported'
wp option delete 'fpropdf_automap'
wp option delete 'fpropdf_pdfaid_api_key'
wp option delete 'fpropdf_enable_previews'
wp option delete 'fpropdf_field_map_allowed'
wp option delete 'fpropdf_faster_uploads'
wp option delete 'fpropdf_disable_local'
wp option delete 'fpropdf_embedded_data'

# Delete Transients
wp transient delete 'fpropdf_notification_restored'
wp transient delete 'fpropdf_notification_deleted'
wp transient delete 'fpropdf_notification_new_layout'

