#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloudsecurewp_enable_email_server_error_notification'
wp option delete 'cloudsecurewp_two_factor_authentication_roles'
wp option delete 'cptui_post_types'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wp_version_check'

