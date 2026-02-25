#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'echoza_enabled'
wp option delete 'echoza_app_key'
wp option delete 'echoza_version'
wp option delete 'echoza_app_secret'
wp option delete 'echoza_endpoint'
wp option delete 'echoza_access_token'

