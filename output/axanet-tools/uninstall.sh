#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'axanet_disable_admin_bar_non_admins'
wp option delete 'axanet_disable_comments'
wp option delete 'axanet_login_logo_url'
wp option delete 'axanet_login_logo_width'
wp option delete 'axanet_login_logo_height'
wp option delete 'axanet_login_background_color'
wp option delete 'axanet_login_security_settings'
wp option delete 'axanet_login_security_enabled'
wp option delete 'axanet_blocked_ips'
wp option delete 'axanet_maintenance_settings'
wp option delete 'axanet_tools_settings'
wp option delete 'axanet_search_replace_settings'

# Delete Transients
wp transient delete 'axanet_tools_transient'

