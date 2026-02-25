#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admin-theme-login-logo'
wp option delete 'admin-theme-primary-color'
wp option delete 'admin-theme-small-logo'
wp option delete 'admin-theme-custom-hover'
wp option delete 'admin-theme-rounded-corners'
wp option delete 'admin-theme-dashboard_plugins'
wp option delete 'admin-theme-dashboard_recent_comments'
wp option delete 'admin-theme-dashboard_primary'
wp option delete 'admin-theme-dashboard_incoming_links'
wp option delete 'admin-theme-dashboard_right_now'
wp option delete 'admin-theme-dashboard_secondary'
wp option delete 'admin-theme-dashboard_recent_drafts'
wp option delete 'admin-theme-dashboard_quick_press'
wp option delete 'admin-theme-wp_welcome_panel'

