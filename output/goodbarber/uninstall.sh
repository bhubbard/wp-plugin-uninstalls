#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gb_json_api_controllers'
wp option delete 'gb_api_key'
wp option delete 'gb_json_api_base'
wp option delete 'is_secure_mode_enabled'
wp option delete 'is_comments_enabled'

