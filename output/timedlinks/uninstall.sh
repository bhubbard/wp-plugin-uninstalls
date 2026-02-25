#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pick_settings_latest_version'
wp option delete 'pick_settings_version'
wp option delete 'pick_settings_url'
wp option delete 'twp_api_key'

