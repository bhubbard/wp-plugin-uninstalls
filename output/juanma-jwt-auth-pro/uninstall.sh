#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwt_auth_pro_settings'
wp option delete 'jwt_auth_pro_general_settings'
wp option delete 'jwt_auth_cookie_config'

# Delete Transients
wp transient delete 'jwt_auth_pro_version'
wp transient delete 'jwt_auth_pro_deactivation_notice'

# Clear Cron Jobs
wp cron event delete 'jwt_auth_pro_clean_expired_tokens'

