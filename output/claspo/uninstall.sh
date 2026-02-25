#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'claspo_script_id'
wp option delete 'claspo_script_code'
wp option delete 'claspo_plugin_activated'

# Delete Transients
wp transient delete 'claspo_api_error'
wp transient delete 'claspo_success_message'

