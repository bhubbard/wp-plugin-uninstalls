#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rest_api_plugin_version'
wp option delete 'json_api_plugin_version'

