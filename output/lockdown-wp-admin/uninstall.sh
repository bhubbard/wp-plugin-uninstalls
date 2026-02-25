#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ld_http_auth'
wp option delete 'ld_hide_wp_admin'
wp option delete 'active_sitewide_plugins'
wp option delete 'ld_login_base'
wp option delete 'ld_private_users'

