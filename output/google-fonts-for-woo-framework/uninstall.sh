#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwfc_google_api_key'
wp option delete 'google_api_key'
wp option delete 'gwfc_plugin_version'

