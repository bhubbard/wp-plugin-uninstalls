#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailtrap_api_token'
wp option delete 'mailtrap_enabled'
wp option delete 'mailtrap_username'
wp option delete 'mailtrap_password'
wp option delete 'mailtrap_port'
wp option delete 'mailtrap_secure'

