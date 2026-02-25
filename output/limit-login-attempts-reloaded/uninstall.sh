#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'limit_login_allow_local_options'
wp option delete 'limit_login_use_local_options'
wp option delete 'site_name'
wp option delete 'limit_login_app_config'

# Delete Transients
wp transient delete 'llar_dashboard_redirect'

