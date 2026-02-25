#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voxpow_tracker_id'
wp option delete 'voxpow_api_token'
wp option delete 'voxpow_commands_js_file'
wp option delete 'voxpow_api_endpoint'

