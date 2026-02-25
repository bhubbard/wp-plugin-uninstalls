#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smtp2go_api_key'
wp option delete 'smtp2go_enabled'
wp option delete 'smtp2go_enable_api_logs'
wp option delete 'smtp2go_from_address'
wp option delete 'smtp2go_force_from_address'
wp option delete 'smtp2go_from_name'
wp option delete 'smtp2go_custom_headers'

