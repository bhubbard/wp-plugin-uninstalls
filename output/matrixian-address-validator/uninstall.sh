#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'matrixian_enabled'
wp option delete 'matrixian_api_user'
wp option delete 'matrixian_api_password'

# Delete Transients
wp transient delete 'matrixian_auth_token'

