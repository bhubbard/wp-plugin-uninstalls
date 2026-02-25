#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'LINKSTORM_API_KEY'
wp option delete 'LINKSTORM_WEBSITE_ID'
wp option delete 'LINKSTORM_PROJECT_ID'
wp option delete 'LINKSTORM_ENABLE_SCRIPT'
wp option delete 'LINKSTORM_SCRIPT_VERIFIED'
wp option delete 'LINKSTORM_SHOW_WELCOME'

