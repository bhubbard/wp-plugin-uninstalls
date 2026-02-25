#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'firepro_api_key'
wp option delete 'firepro_temp_key'
wp option delete 'firepro_pro_status'
wp option delete 'firepro_api_settings'

