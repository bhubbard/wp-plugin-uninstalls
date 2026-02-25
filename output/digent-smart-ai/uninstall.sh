#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dgnts_settings'
wp option delete 'dgnts_api_key'
wp option delete 'dgnts_system_prompt'

