#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'joezchat_api_key'
wp option delete 'joezchat_kb'
wp option delete 'joezchat_temperature'

