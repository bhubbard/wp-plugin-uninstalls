#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mushraider_api_key'
wp option delete 'mushraider_roles_mapping'
wp option delete 'mushraider_api_url'
wp option delete 'mushraider_css'

