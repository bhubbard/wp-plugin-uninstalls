#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'http_auth_settings'
wp option delete 'http_auth_plugin_version'

