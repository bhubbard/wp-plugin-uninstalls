#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smalk_ai_workspace_key'
wp option delete 'smalk_ai_workspace_name'
wp option delete 'smalk_ai_publisher_activated'
wp option delete 'smalk_ai_project_key'

# Delete Transients
wp transient delete 'smalk_workspace_fetch_success'
wp transient delete 'smalk_workspace_fetch_error'

