#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'impact_existing_user'
wp option delete 'impact_request_value'
wp option delete 'impact_settings_option_name'
wp option delete 'impact_integration_delete_option_name'

